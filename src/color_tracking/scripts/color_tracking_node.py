#!/usr/bin/python3
# coding=utf8
# Date:2022/05/30
import sys
import cv2
import math
import rospy
import numpy as np
from threading import RLock, Timer

from std_srvs.srv import *
from std_msgs.msg import *
from sensor_msgs.msg import Image

from sensor.msg import Led
from color_tracking.srv import SetTarget
from visual_processing.msg import Result
from visual_processing.srv import SetParam
from hiwonder_servo_msgs.msg import MultiRawIdPosDur

from armpi_pro import PID
from armpi_pro import Misc
from armpi_pro import bus_servo_control
from kinematics import ik_transform

# 颜色跟踪

lock = RLock()
ik = ik_transform.ArmIK()

__isRunning = False
target_color = 'None'


img_w = 640
img_h = 480
x_dis = 500
y_dis = 0.167
Z_DIS = 0.2
z_dis = Z_DIS
RADIUS = 45
x_pid = PID.PID(P=0.08, I=0.001, D=0)  # pid初始化
y1_pid = PID.PID(P=0.0008, I=0, D=0)
y2_pid = PID.PID(P=0.0003, I=0, D=0)
z_pid = PID.PID(P=0.00003, I=0, D=0)

range_rgb = {
    'red': (0, 0, 255),
    'blue': (255, 0, 0),
    'green': (0, 255, 0),
    'black': (0, 0, 0),
    'white': (255, 255, 255)}

# 初始位置
def initMove(delay=True):
    with lock:
        target = ik.setPitchRanges((0, y_dis, Z_DIS), -90, -92, -88) # 逆运动学求解
        if target:
            servo_data = target[1]
            bus_servo_control.set_servos(joints_pub, 1500, ((1, 200), (2, 500), (3, servo_data['servo3']), (4, servo_data['servo4']), (5, servo_data['servo5']),(6, servo_data['servo6'])))
    if delay:
        rospy.sleep(2)

# 关闭扩展板RGB彩灯
def turn_off_rgb():
    led = Led()
    led.index = 0
    led.rgb.r = 0
    led.rgb.g = 0
    led.rgb.b = 0
    rgb_pub.publish(led)
    led.index = 1
    rgb_pub.publish(led)

# 变量重置
def reset():
    global target_color
    global x_dis, y_dis, z_dis
    
    with lock:
        x_dis = 500
        y_dis = 0.167
        z_dis = Z_DIS
        x_pid.clear()
        y1_pid.clear()
        y2_pid.clear()
        z_pid.clear()
        turn_off_rgb()
        target_color = 'None'


# 初始化
def init():
    rospy.loginfo("color tracking Init")
    initMove()
    reset()

# 图像处理结果回调函数
def run(msg):
    global x_dis, y_dis, z_dis
    
    center_x = msg.center_x
    center_y = msg.center_y
    radius = msg.data
    
    with lock:
        if __isRunning and target_color != 'None':
            if radius > 20:
                # X轴追踪
                x_pid.SetPoint = img_w / 2.0  # 设定
                x_pid.update(center_x)        # 当前
                dx = x_pid.output             # 输出
                x_dis += int(dx)             
                # 限幅
                x_dis = 200 if x_dis < 200 else x_dis
                x_dis = 800 if x_dis > 800 else x_dis
                
                # Y轴正方向追踪
                if radius - RADIUS < -3:
                    y1_pid.SetPoint = RADIUS # 设定
                    y1_pid.update(radius)    # 当前
                    dy = y1_pid.output       # 输出
                    
                # Y轴负方向追踪
                elif radius - RADIUS > 5:
                    y2_pid.SetPoint = RADIUS # 设定
                    y2_pid.update(radius)    # 当前
                    dy = y2_pid.output       # 输出
                else:
                    dy = 0
                y_dis += dy  
                y_dis = 0.12 if y_dis < 0.12 else y_dis
                y_dis = 0.25 if y_dis > 0.25 else y_dis
                
                # Z轴追踪
                z_pid.SetPoint = img_h / 2.0  # 设定
                z_pid.update(center_y)        # 当前
                dy = z_pid.output             # 输出
                z_dis += dy

                z_dis = 0.22 if z_dis > 0.22 else z_dis
                z_dis = 0.17 if z_dis < 0.17 else z_dis

                target = ik.setPitchRanges((0, round(y_dis, 4), round(z_dis, 4)), -90, -85, -95) # 逆运动学求解
                if target:
                    # 发布舵机控制节点消息,移动机械臂
                    servo_data = target[1]
                    bus_servo_control.set_servos(joints_pub, 20, (
                        (3, servo_data['servo3']), (4, servo_data['servo4']), (5, servo_data['servo5']), (6, x_dis)))


result_sub = None
heartbeat_timer = None
# APP enter服务回调函数
def enter_func(msg):
    global lock
    global __isRunning
    global result_sub
    
    rospy.loginfo("enter color tracking")
    init()
    with lock:
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
    
    rospy.loginfo("exit color tracking")
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
        except BaseException as e:
            rospy.loginfo('%s', e)
        
    return [True, 'exit']

# 开始运行函数
def start_running():
    global lock
    global __isRunning
    
    rospy.loginfo("start running color tracking")
    with lock:
        __isRunning = True

# 停止运行函数
def stop_running():
    global lock
    global __isRunning
    
    rospy.loginfo("stop running color tracking")
    with lock:
        reset()
        __isRunning = False
        initMove(delay=False)
        rospy.ServiceProxy('/visual_processing/set_running', SetParam)()

# APP running服务回调函数
def set_running(msg):
    
    if msg.data:
        start_running()
    else:
        stop_running()
        
    return [True, 'set_running']

# APP set_target服务回调函数
def set_target(msg):
    global lock
    global target_color
    
    rospy.loginfo("%s", msg)
    with lock:
        target_color = msg.data
        led = Led()
        led.index = 0
        led.rgb.r = range_rgb[target_color][2]
        led.rgb.g = range_rgb[target_color][1]
        led.rgb.b = range_rgb[target_color][0]
        rgb_pub.publish(led)
        led.index = 1
        rgb_pub.publish(led)
        rospy.sleep(0.1)
        visual_running = rospy.ServiceProxy('/visual_processing/set_running', SetParam)
        visual_running('color',target_color)
        rospy.sleep(0.1)
        
    return [True, 'set_target']

# APP heartbeat服务回调函数
def heartbeat_srv_cb(msg):
    global heartbeat_timer

    if isinstance(heartbeat_timer, Timer):
        heartbeat_timer.cancel()
    if msg.data:
        heartbeat_timer = Timer(5, rospy.ServiceProxy('/color_tracking/exit', Trigger))
        heartbeat_timer.start()
    rsp = SetBoolResponse()
    rsp.success = msg.data

    return rsp


if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('color_tracking', log_level=rospy.DEBUG)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    # app通信服务
    enter_srv = rospy.Service('/color_tracking/enter', Trigger, enter_func)
    exit_srv = rospy.Service('/color_tracking/exit', Trigger, exit_func)
    running_srv = rospy.Service('/color_tracking/set_running', SetBool, set_running)
    set_target_srv = rospy.Service('/color_tracking/set_target', SetTarget, set_target)
    heartbeat_srv = rospy.Service('/color_tracking/heartbeat', SetBool, heartbeat_srv_cb)
    # 蜂鸣器
    buzzer_pub = rospy.Publisher('/sensor/buzzer', Float32, queue_size=1)
    # rgb 灯
    rgb_pub = rospy.Publisher('/sensor/rgb_led', Led, queue_size=1)
    rospy.sleep(0.5) # pub之后必须延时才能生效
    
    debug = False
    if debug:
        rospy.sleep(0.2)
        enter_func(1)
        
        msg = SetTarget()
        msg.data = 'blue'
        
        set_target(msg)
        start_running()

    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("Shutting down")
    finally:
        cv2.destroyAllWindows()
