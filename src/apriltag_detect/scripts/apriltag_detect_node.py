#!/usr/bin/python3
# coding=utf8
# Date:2022/05/30
import sys
import cv2
import math
import time
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
from chassis_control.msg import SetTranslation, SetVelocity
# 导入机器人驱动库
from armpi_pro import PID
from armpi_pro import Misc
from armpi_pro import bus_servo_control
from kinematics import ik_transform

# 标签识别

# 实例化
lock = RLock()
ik = ik_transform.ArmIK()
# 图像宽度和高度,单位像素点
img_w = 640
img_h = 480
move_en = False
__isRunning = False
detect_id = 'None'

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
        target = ik.setPitchRanges((0, 0.167, 0.2), -90, -92, -88) # 逆运动学求解
        if target:
            servo_data = target[1]
            # 按照逆运动学的解驱动舵机
            bus_servo_control.set_servos(joints_pub, 1800, ((1, 200), (2, 500), (3, servo_data['servo3']), (4, servo_data['servo4']),
                                                                                (5, servo_data['servo5']), (6, servo_data['servo6'])))
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
    global move_en
    global detect_id

    with lock:
        turn_off_rgb()
        move_en = False
        detect_id = 'None'

# 初始化
def init():
    rospy.loginfo("apriltag detect Init")
    initMove()
    reset()


# 移动控制函数
def move():
    global move_en
    global detect_id

    while __isRunning:
        if move_en and detect_id != 'None': # 移动使能和检测到标签
            rospy.sleep(0.5)
            if detect_id == 1: # 标签id为1，机器人画三角形
                # 发布底盘控制消息,80为线速度:0~200，45为方向角:0~360，0为偏航角速度:-1~1
                set_velocity.publish(100,60,0) # 画三角形第一条边
                rospy.sleep(2.6)  # 延时2.6秒
                set_velocity.publish(100,180,0) # 画三角形第二条边
                rospy.sleep(2.6)  # 延时2.6秒
                set_velocity.publish(100,300,0) # 画三角形第三条边
                rospy.sleep(2.6)  # 延时2.6秒

            elif detect_id == 2: # 标签id为2，机器人画圆形
                 for i in range(360):# 通过for循环,持续改变机器人的运动方向,这样运动轨迹就是一个圆形
                    set_velocity.publish(100,i,0)  
                    rospy.sleep(0.02)

            elif detect_id == 3: # 标签id为3，机器人定圆漂移
                set_velocity.publish(100,180,-0.45) # 横移和原地旋转进行合成，就成了定圆漂移
                rospy.sleep(10.2)

            move_en = False
            detect_id = 'None'
            set_velocity.publish(0,90,0) # 停止移动

        else:
            rospy.sleep(0.01)


# 图像处理结果回调函数
def run(msg):
    global move_en
    global detect_id

    # 获得图像处理结果
    center_x = msg.center_x  # 目标中心X坐标
    center_y = msg.center_y  # 目标中心Y坐标
    id = msg.data            # 标签id号

    if not move_en and id != 0:
        move_en = True
        detect_id = id
        buzzer_pub.publish(0.1)  # 发布蜂鸣器节点消息,控制蜂鸣器响0.1S

result_sub = None
heartbeat_timer = None
# APP enter服务回调函数
def enter_func(msg):
    global lock
    global result_sub

    rospy.loginfo("enter apriltag detect")
    init()
    with lock:
        if result_sub is None:
            rospy.ServiceProxy('/visual_processing/enter', Trigger)()
            result_sub = rospy.Subscriber('/visual_processing/result', Result, run) # 订阅图像处理处理节点结果

    return [True, 'enter']

# APP exit服务回调函数
def exit_func(msg):
    global lock
    global result_sub
    global __isRunning
    global heartbeat_timer

    rospy.loginfo("exit apriltag detect")
    with lock:
        rospy.ServiceProxy('/visual_processing/exit', Trigger)()
        __isRunning = False
        reset()
        try:
            if result_sub is not None:
                result_sub.unregister() # 注销订阅图像处理结果
                result_sub = None
            if heartbeat_timer is not None:
                heartbeat_timer.cancel() # 关闭心跳包服务
                heartbeat_timer = None
        except BaseException as e:
            rospy.loginfo('%s', e)

    return [True, 'exit']

# 开始运行函数
def start_running():
    global lock
    global __isRunning

    rospy.loginfo("start running apriltag detect")
    with lock:
        __isRunning = True
        visual_running = rospy.ServiceProxy('/visual_processing/set_running', SetParam)
        visual_running('apriltag','')
        rospy.sleep(0.1)
        # 运行子线程
        th = Thread(target=move)
        th.setDaemon(True)
        th.start()

# 停止运行函数
def stop_running():
    global lock
    global __isRunning

    rospy.loginfo("stop running apriltag detect")
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

# 设置扩展板RGB彩灯
def set_LED(color):
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

# APP heartbeat服务回调函数
def heartbeat_srv_cb(msg):
    global heartbeat_timer

    if isinstance(heartbeat_timer, Timer):
        heartbeat_timer.cancel()
    if msg.data:
        heartbeat_timer = Timer(5, rospy.ServiceProxy('/apriltag_detect/exit', Trigger))
        heartbeat_timer.start()
    rsp = SetBoolResponse()
    rsp.success = msg.data

    return rsp


if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('apriltag_detect', log_level=rospy.DEBUG)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    # app通信服务
    enter_srv = rospy.Service('/apriltag_detect/enter', Trigger, enter_func)
    exit_srv = rospy.Service('/apriltag_detect/exit', Trigger, exit_func)
    running_srv = rospy.Service('/apriltag_detect/set_running', SetBool, set_running)
    heartbeat_srv = rospy.Service('/apriltag_detect/heartbeat', SetBool, heartbeat_srv_cb)
    # 麦轮底盘控制
    set_velocity = rospy.Publisher('/chassis_control/set_velocity', SetVelocity, queue_size=1)
    set_translation = rospy.Publisher('/chassis_control/set_translation', SetTranslation, queue_size=1)
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
