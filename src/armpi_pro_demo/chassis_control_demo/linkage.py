#!/usr/bin/python3
# coding=utf8
import sys
import rospy
from chassis_control.msg import *
from kinematics import ik_transform
from armpi_pro import bus_servo_control
from hiwonder_servo_msgs.msg import MultiRawIdPosDur

if sys.version_info.major == 2:
    print('Please run this program with python3!')
    sys.exit(0)
    
print('''
**********************************************************
********************功能:小车联动例程********************
**********************************************************
----------------------------------------------------------
Official website:https://www.hiwonder.com
Online mall:https://hiwonder.tmall.com
----------------------------------------------------------
Tips:
 * 按下Ctrl+C可关闭此次程序运行，若失败请多次尝试！
----------------------------------------------------------
''')

ik = ik_transform.ArmIK()

start = True
#关闭前处理
def stop():
    global start

    start = False
    print('关闭中...')
    set_velocity.publish(0,0,0)  # 关闭所有电机
    # 设置初始位置
    target = ik.setPitchRanges((0.0, 0.10, 0.2), -90, -180, 0) # 运动学求解
    if target: # 判断是否有解
        servo_data = target[1]
        # 驱动机械臂移动
        bus_servo_control.set_servos(joints_pub, 1800, ((1, 200), (2, 500), (3, servo_data['servo3']),
                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(2)
    
if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('linkage', log_level=rospy.DEBUG)
    rospy.on_shutdown(stop)
    # 麦轮底盘控制
    set_velocity = rospy.Publisher('/chassis_control/set_velocity', SetVelocity, queue_size=1)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    rospy.sleep(0.2) # 延时等生效
    
    # 设置初始位置
    target = ik.setPitchRanges((0.0, 0.10, 0.2), -90, -180, 0) # 运动学求解
    if target: # 判断是否有解
        servo_data = target[1]
        # 驱动机械臂移动
        bus_servo_control.set_servos(joints_pub, 1800, ((1, 200), (2, 500), (3, servo_data['servo3']),
                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(2)
    
    while start:
        
        set_velocity.publish(80,270,0) # 线速度60，方向角90，偏航角速度0(小于0，为顺时针方向)
        target = ik.setPitchRanges((0.0, 0.20, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.1)
        
        target = ik.setPitchRanges((0.0, 0.30, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.1)
        set_velocity.publish(0,270,0)
        rospy.sleep(0.3)
        
        
        set_velocity.publish(80,90,0) # 线速度60，方向角90，偏航角速度0(小于0，为顺时针方向)
        target = ik.setPitchRanges((0.0, 0.20, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.1)
        
        target = ik.setPitchRanges((0.0, 0.10, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.1)
        set_velocity.publish(0,90,0)
        rospy.sleep(0.3)
        
        ################
        
        set_velocity.publish(85,0,0) # 线速度60，方向角90，偏航角速度0(小于0，为顺时针方向)
        target = ik.setPitchRanges((-0.16, 0.1, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.2)
        set_velocity.publish(0,0,0)
        rospy.sleep(0.3)
        
        
        set_velocity.publish(85,180,0) # 线速度60，方向角90，偏航角速度0(小于0，为顺时针方向)
        target = ik.setPitchRanges((0.0, 0.1, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.2)
        
        target = ik.setPitchRanges((0.16, 0.1, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.2)
        set_velocity.publish(0,90,0)
        rospy.sleep(0.3)
        
        
        set_velocity.publish(85,0,0) # 线速度60，方向角90，偏航角速度0(小于0，为顺时针方向)
        target = ik.setPitchRanges((0.0, 0.1, 0.20), -90, -180, 0) # 运动学求解
        if target: # 判断是否有解
            servo_data = target[1]
            # 驱动机械臂移动
            bus_servo_control.set_servos(joints_pub, 1200, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(1.2)
        
        
    set_velocity.publish(0,0,0)  # 关闭所有电机
    print('已关闭')
        
