#!/usr/bin/python3
# coding=utf8
# Date:2022/05/30
import sys
import cv2
import math
import rospy
import numpy as np
from threading import RLock, Timer, Thread

from std_srvs.srv import *
from std_msgs.msg import *
from sensor_msgs.msg import Image
from visual_processing.msg import Result
from visual_processing.srv import SetParam
from hiwonder_servo_msgs.msg import MultiRawIdPosDur

from armpi_pro import Misc
from armpi_pro import bus_servo_control
from kinematics import ik_transform

# 人脸识别

lock = RLock()
ik = ik_transform.ArmIK()

__isRunning = False

range_rgb = {
    'red': (0, 0, 255),
    'blue': (255, 0, 0),
    'green': (0, 255, 0),
    'black': (0, 0, 0),
    'white': (255, 255, 255),
}

# 初始位置
def initMove(delay=True):
    with lock:
        servo_data = ik.setPitchRanges((0, 0.1, 0.32), -60, -180, 0)[1] # 逆运动学求解
        # 按照逆运动学的解驱动舵机
        bus_servo_control.set_servos(joints_pub, 1500, (
            (1, 400), (2, 500), (3, servo_data['servo3']), (4, servo_data['servo4']), (5, servo_data['servo5']),
            (6, servo_data['servo6'])))
    if delay:
        rospy.sleep(2)

img_w = 640
center_x = 0
center_y = 0
d_pulse = 3
have_move = False
servo6_pulse = 500
start_greet = False
action_finish = True

# 变量重置
def reset():
    global center_x
    global center_y
    global d_pulse
    global have_move       
    global start_greet
    global servo6_pulse
    global action_finish 

    with lock:
        center_x = 0
        center_y = 0
        d_pulse = 3
        have_move = False
        servo6_pulse = 500
        start_greet = False

# 初始化调用
def init():
    print("face detect Init")
    initMove()
    reset()

# 机器人移动函数
def move():
    global have_move
    global start_greet
    global action_finish 
    global d_pulse, servo6_pulse 
        
    while __isRunning:
        if start_greet: #人脸在画面中间
            start_greet = False                
            action_finish = False
            
            # 控制机械臂打招呼
            bus_servo_control.set_servos(joints_pub, 300, ((2, 300),)) # 机械臂腕部向左转
            rospy.sleep(0.3)

            bus_servo_control.set_servos(joints_pub, 600, ((2, 700),)) # 机械臂腕部向右转
            rospy.sleep(0.6)
            
            bus_servo_control.set_servos(joints_pub, 600, ((2, 300),)) # 机械臂腕部向左转
            rospy.sleep(0.6)
            
            bus_servo_control.set_servos(joints_pub, 300, ((2, 500),)) # 机械臂腕部回中
            rospy.sleep(0.3)
            
            bus_servo_control.set_servos(joints_pub, 400, ((1, 200),)) # 机械爪张开
            rospy.sleep(0.4)

            bus_servo_control.set_servos(joints_pub, 400, ((1, 500),)) # 机械爪闭合
            rospy.sleep(0.4)
            
            bus_servo_control.set_servos(joints_pub, 400, ((1, 200),)) # 机械爪张开
            rospy.sleep(0.4)
            
            bus_servo_control.set_servos(joints_pub, 400, ((1, 500),)) # 机械爪闭合
            rospy.sleep(1)
            
            have_move = True
            action_finish = True
            
        else:
            if have_move:
                # 机械臂打招呼后复位
                have_move = False
                bus_servo_control.set_servos(joints_pub, 200, ((1, 500), (2, 500)))
                rospy.sleep(0.2)
                
            # 没有识别到人脸，机械臂左右转动
            if servo6_pulse > 875 or servo6_pulse < 125:
                d_pulse = -d_pulse
            bus_servo_control.set_servos(joints_pub, 50, ((6, servo6_pulse),))           
            servo6_pulse += d_pulse       
           
            rospy.sleep(0.05)                
 
 
# 图像处理结果回调函数
def run(msg):
    global center_x
    global center_y
    global start_greet
    
    center_x = msg.center_x
    center_y = msg.center_y
    
    # 判断人脸是不是在画面中间
    if action_finish and abs(center_x - img_w/2) < 100:
        start_greet = True 


result_sub = None
heartbeat_timer = None
# APP enter服务回调函数
def enter_func(msg):
    global lock
    global __isRunning
    global result_sub

    rospy.loginfo("enter face detect")
    with lock:
        init()
        if result_sub is None:
            rospy.ServiceProxy('/visual_processing/enter', Trigger)()
            result_sub = rospy.Subscriber('/visual_processing/result', Result, run)
            
    return [True, 'enter']

# APP exit服务回调函数
def exit_func(msg):
    global lock
    global __isRunning
    global result_sub
    global heartbeat_timer
    
    rospy.loginfo("exit face detect")
    with lock:
        rospy.ServiceProxy('/visual_processing/exit', Trigger)()
        __isRunning = False
        reset()
        try:
            if result_sub is not None:
                result_sub.unregister()
                result_sub = None
            if heartbeat_timer is not None:
                heartbeat_timer.cancel()
                heartbeat_timer = None
        except:
            pass
    
    return [True, 'exit']

# 开始运行函数
def start_running():
    global lock
    global __isRunning

    rospy.loginfo("start running face detect")
    with lock:
        __isRunning = True
        # 运行子线程
        th = Thread(target=move)
        th.setDaemon(True)
        th.start()

# 停止运行函数
def stop_running():
    global lock
    global __isRunning

    rospy.loginfo("stop running face detect")
    with lock:
        reset()
        __isRunning = False
        initMove(delay=False)
        rospy.ServiceProxy('/visual_processing/set_running', SetParam)()

# APP running服务回调函数
def set_running(msg):
    rospy.loginfo("%s", msg)
    
    if msg.data:
        visual_running = rospy.ServiceProxy('/visual_processing/set_running', SetParam)
        visual_running('face','')
        start_running()
    else:
        stop_running()
    
    return [True, 'set_running']


# APP heartbeat服务回调函数
def heartbeat_srv_cb(msg):
    global heartbeat_timer
    
    if isinstance(heartbeat_timer, Timer):
        heartbeat_timer.cancel()
    if msg.data:
        heartbeat_timer = Timer(5, rospy.ServiceProxy('/face_detect/exit', Trigger))
        heartbeat_timer.start()
    rsp = SetBoolResponse()
    rsp.success = msg.data

    return rsp

if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('face_detect', log_level=rospy.DEBUG)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    # app通信服务
    enter_srv = rospy.Service('/face_detect/enter', Trigger, enter_func)
    exit_srv = rospy.Service('/face_detect/exit', Trigger, exit_func)
    running_srv = rospy.Service('/face_detect/set_running', SetBool, set_running)
    heartbeat_srv = rospy.Service('/face_detect/heartbeat', SetBool, heartbeat_srv_cb)

    debug = False
    if debug:
        enter_func(1)
        start_running()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    finally:
        cv2.destroyAllWindows()

