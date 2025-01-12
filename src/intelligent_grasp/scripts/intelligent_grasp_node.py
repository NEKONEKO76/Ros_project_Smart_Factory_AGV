#!/usr/bin/python3
# coding=utf8
# Date:2022/05/30
import sys
import cv2
import time
import math
import rospy
import numpy as np
from threading import RLock, Timer, Thread

from std_srvs.srv import *
from std_msgs.msg import *
from sensor_msgs.msg import Image

from sensor.msg import Led
from visual_processing.msg import Result
from visual_processing.srv import SetParam
from hiwonder_servo_msgs.msg import MultiRawIdPosDur

from armpi_pro import PID
from armpi_pro import Misc
from armpi_pro import bus_servo_control
from kinematics import ik_transform

# 智能夹取

lock = RLock()
ik = ik_transform.ArmIK()

x_dis = 500
y_dis = 0.15
img_w = 640
img_h = 480
centreX = 320
centreY = 410
offset_y = 0
stable = False
arm_move = False
__isRunning = False
position_en = False
detect_color = 'None'
x_pid = PID.PID(P=0.06, I=0, D=0)    # pid初始化
y_pid = PID.PID(P=0.00003, I=0, D=0)



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
        target = ik.setPitchRanges((0, 0.15, 0.03), -180, -180, 0)
        if target:
            servo_data = target[1]
            bus_servo_control.set_servos(joints_pub, 1800, ((1, 200), (2, 500), (3, servo_data['servo3']), (4, servo_data['servo4']),
                                                                                (5, servo_data['servo5']),(6, servo_data['servo6'])))
    if delay:
        rospy.sleep(2)


def off_rgb():
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
    global arm_move
    global __isRunning
    global x_dis, y_dis
    global detect_color
    global position_en
    
    with lock:
        x_dis = 500
        y_dis = 0.15
        x_pid.clear()
        y_pid.clear()
        off_rgb()
        arm_move = False
        position_en = False
        detect_color = 'None'

# app初始化调用
def init():
    rospy.loginfo("intelligent grasp Init")
    initMove()
    reset()
    
# 机器人移动函数
def move():
    global arm_move
    global detect_color
    
    K = 1000/240.0
    coord_list = { 'red':(-0.2, 0.15, -0.06),
                   'green':(-0.2, 0.05, -0.06),
                   'blue':(-0.2, -0.05, -0.06)}
    
    while __isRunning:
        if arm_move and detect_color != 'None': # 等待可以夹取
            target_color = detect_color  # 暂存目标颜色
            set_rgb(target_color)    # 设置rgb灯颜色
            rospy.sleep(0.1)
            buzzer_pub.publish(0.1) # 蜂鸣器响一下
            bus_servo_control.set_servos(joints_pub, 500, ((1, 120),)) #张开机械爪
            rospy.sleep(0.5)
            target = ik.setPitchRanges((0, round(y_dis + offset_y, 4), -0.08), -180, -180, 0) #机械臂向下伸
            if target:
                servo_data = target[1]
                bus_servo_control.set_servos(joints_pub, 1000, ((3, servo_data['servo3']), (4, servo_data['servo4']),
                                                                (5, servo_data['servo5']), (6, x_dis)))
            rospy.sleep(1.5)
            bus_servo_control.set_servos(joints_pub, 500, ((1, 450),)) # 闭合机械爪
            rospy.sleep(0.8)
            
            bus_servo_control.set_servos(joints_pub, 1500, ((1, 450), (2, 500), (3, 80), (4, 825), (5, 625), (6, 500))) #机械臂抬起来
            rospy.sleep(1.5)
            
            target = ik.setPitchRanges(coord_list[target_color], -180, -180, 0) # 机械臂移动到色块放置位置
            if target:
                servo_data = target[1]
                bus_servo_control.set_servos(joints_pub, 1200, ((6, servo_data['servo6']),)) # 机械臂先转过去
                rospy.sleep(1)
                bus_servo_control.set_servos(joints_pub, 1500, ((3, servo_data['servo3']), (4, servo_data['servo4']), (5, servo_data['servo5']))) # 再放下了
            rospy.sleep(1.8)

            bus_servo_control.set_servos(joints_pub, 500, ((1, 150),))  #张开机械爪
            rospy.sleep(0.8)
            
            #机械臂复位
            target = ik.setPitchRanges((0, 0.15, 0.03), -180, -180, 0)
            if target:
                servo_data = target[1]
                bus_servo_control.set_servos(joints_pub, 1000, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                                                (4, servo_data['servo4']), (5, servo_data['servo5'])))
                rospy.sleep(1)
                bus_servo_control.set_servos(joints_pub, 1500, ((6, servo_data['servo6']),))
                rospy.sleep(1.5)
                
            reset()  # 变量重置
            
        else:
            rospy.sleep(0.01)

n = 0
num = 0
last_x = 0
last_y = 0
color_buf = []
color_list = {0:'None', 1:'red', 2:'green', 3:'blue'}
# 图像处理结果回调函数
def run(msg):
    global arm_move
    global color_buf
    global offset_y
    global last_x, last_y
    global position_en, n
    global x_dis, y_dis, num
    global detect_color, stable
    
    # 更新色块位置参数
    center_x = msg.center_x
    center_y = msg.center_y
    color_num = msg.data
    
    if not position_en: # 判断色块是否放稳
        dx = abs(center_x - last_x)
        dy = abs(center_y - last_y)
        last_x = center_x
        last_y = center_y
        if dx < 3 and dy < 3:
            n += 1
            if n == 10:
                n = 0
                position_en = True # 放稳
        else:
            n = 0
    
    else:
        # 色块已经放稳，进行追踪夹取
        if not arm_move and color_num != 0:
            diff_x = abs(center_x - centreX)
            diff_y = abs(center_y - centreY)
            # X轴PID追踪
            if diff_x < 10:
                x_pid.SetPoint = center_x  # 设定
            else:
                x_pid.SetPoint = centreX
                
            x_pid.update(center_x)   # 当前
            dx = x_pid.output        # 输出
            x_dis += int(dx)     
            x_dis = 200 if x_dis < 200 else x_dis
            x_dis = 800 if x_dis > 800 else x_dis
            # Y轴PID追踪
            if diff_y < 10:
                y_pid.SetPoint = center_y  # 设定
            else:
                y_pid.SetPoint = centreY
                
            y_pid.update(center_y)   # 当前
            dy = y_pid.output        # 输出
            y_dis += dy  
            y_dis = 0.12 if y_dis < 0.12 else y_dis
            y_dis = 0.28 if y_dis > 0.28 else y_dis
            
            # 机械臂追踪移动到色块上方
            target = ik.setPitchRanges((0, round(y_dis, 4), 0.03), -180, -180, 0)
            if target:
                servo_data = target[1]
                bus_servo_control.set_servos(joints_pub, 20,((3, servo_data['servo3']),(4, servo_data['servo4']),
                                                             (5, servo_data['servo5']), (6, x_dis)))
            
            if dx < 2 and dy < 0.003 and not stable: # 等待机械臂稳定停在色块上方
                num += 1
                if num == 10:
                    stable = True
                    num = 0
            else:
                num = 0
            
            if stable: # 多次确认识别到的颜色
                color_buf.append(color_num)
                if len(color_buf) == 5:
                    mean_num = np.mean(color_buf)
                    if mean_num == 1.0 or mean_num == 2.0 or mean_num == 3.0:
                        detect_color = color_list[mean_num]
                        offset_y = Misc.map(target[2], -180, -150, -0.04, 0.03) # 设置位置补偿
                        arm_move = True # 设置机械臂进行夹取
                    color_buf = []
                    stable = False
                    

result_sub = None
heartbeat_timer = None
# enter服务回调函数
def enter_func(msg):
    global lock
    global result_sub
    
    rospy.loginfo("enter intelligent grasp")
    init()
    with lock:
        if result_sub is None:
            rospy.ServiceProxy('/visual_processing/enter', Trigger)()
            result_sub = rospy.Subscriber('/visual_processing/result', Result, run)
            
    return [True, 'enter']

# exit服务回调函数
def exit_func(msg):
    global lock
    global result_sub
    global __isRunning
    global heartbeat_timer
    
    rospy.loginfo("exit intelligent grasp")
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
    
    rospy.loginfo("start running intelligent grasp")
    with lock:
        __isRunning = True
        visual_running = rospy.ServiceProxy('/visual_processing/set_running', SetParam)
        visual_running('colors','rgb')
        rospy.sleep(0.1)
        # 运行子线程
        th = Thread(target=move)
        th.setDaemon(True)
        th.start()

# 停止运行函数
def stop_running():
    global lock
    global __isRunning
    
    rospy.loginfo("stop running intelligent grasp")
    with lock:
        reset()
        __isRunning = False
        initMove(delay=False)
        rospy.ServiceProxy('/visual_processing/set_running', SetParam)()
        
# set_running服务回调函数
def set_running(msg):
    if msg.data:
        start_running()
    else:
        stop_running()
        
    return [True, 'set_running']

# 设置RGB灯颜色
def set_rgb(color):
    global lock
    with lock:
        led = Led()
        led.index = 0
        led.rgb.r = range_rgb[color][2]
        led.rgb.g = range_rgb[color][1]
        led.rgb.b = range_rgb[color][0]
        rgb_pub.publish(led)
        rospy.sleep(0.05)
        led.index = 1
        rgb_pub.publish(led)
        rospy.sleep(0.05)

# heartbeat服务回调函数
def heartbeat_srv_cb(msg):
    global heartbeat_timer

    if isinstance(heartbeat_timer, Timer):
        heartbeat_timer.cancel()
    if msg.data:
        heartbeat_timer = Timer(5, rospy.ServiceProxy('/intelligent_grasp/exit', Trigger))
        heartbeat_timer.start()
    rsp = SetBoolResponse()
    rsp.success = msg.data

    return rsp


if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('intelligent_grasp', log_level=rospy.DEBUG)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    # app通信服务
    enter_srv = rospy.Service('/intelligent_grasp/enter', Trigger, enter_func)
    exit_srv = rospy.Service('/intelligent_grasp/exit', Trigger, exit_func)
    running_srv = rospy.Service('/intelligent_grasp/set_running', SetBool, set_running)
    heartbeat_srv = rospy.Service('/intelligent_grasp/heartbeat', SetBool, heartbeat_srv_cb)
    # 蜂鸣器
    buzzer_pub = rospy.Publisher('/sensor/buzzer', Float32, queue_size=1)
    # rgb 灯
    rgb_pub = rospy.Publisher('/sensor/rgb_led', Led, queue_size=1)
    rospy.sleep(0.5) # pub之后必须延时才能生效
    
    debug = False
    if debug:
        rospy.sleep(0.2)
        enter_func(1)
        start_running()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("Shutting down")
