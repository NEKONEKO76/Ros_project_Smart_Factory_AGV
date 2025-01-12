#!/usr/bin/env python3
# encoding: utf-8
import os
import time
import math
import json
import rospy
import pygame
import asyncio
import websockets
from armpi_pro import Misc
from std_msgs.msg import *
from chassis_control.msg import *
from hiwonder_servo_msgs.msg import MultiRawIdPosDur
from kinematics import ik_transform
from armpi_pro import bus_servo_control


ik = ik_transform.ArmIK()

key_map = {"PSB_CROSS":2, "PSB_CIRCLE":1, "PSB_SQUARE":3, "PSB_TRIANGLE":0,
        "PSB_L1": 4, "PSB_R1":5, "PSB_L2":6, "PSB_R2":7,
        "PSB_SELECT":8, "PSB_START":9, "PSB_L3":10, "PSB_R3":11};
action_map = ["CROSS", "CIRCLE", "", "SQUARE", "TRIANGLE", "L1", "R1", "L2", "R2", "SELECT", "START", "", "L3", "R3"]

def joystick_init():
    os.environ["SDL_VIDEODRIVER"] = "dummy"
    pygame.display.init()
    pygame.joystick.init()
    if pygame.joystick.get_count() > 0:
        js=pygame.joystick.Joystick(0)
        js.init()
        jsName = js.get_name()
        print("Name of the joystick:", jsName)
        jsAxes=js.get_numaxes()
        print("Number of axif:",jsAxes)
        jsButtons=js.get_numbuttons()
        print("Number of buttons:", jsButtons);
        jsBall=js.get_numballs()
        print("Numbe of balls:", jsBall)
        jsHat= js.get_numhats()
        print("Number of hats:", jsHat)


async def call_rpc(method, params=None):
    websocket = None
    try:
        websocket = await websockets.connect('ws://192.168.149.1:7788/up')
        call = dict(jsonrpc='2.0', method=method)
        if params is not None:
            call['params'] = params
        await websocket.send(json.dumps(call))
        await websocket.close()
    except Exception as e:
        if websocket is not None:
            await websocket.close()


async def chassis_control(v,d,a):
    await call_rpc('chassis_control', [v,d,a])
    
async def arm_control(x,y,z,t):
    await call_rpc('arm_control', [x,y,z,t])


def translation(velocity_x, velocity_y):
    velocity = math.sqrt(velocity_x ** 2 + velocity_y ** 2)
    if velocity_x == 0:
        direction = 90 if velocity_y >= 0 else 270  # pi/2 90deg, (pi * 3) / 2  270deg
    else:
        if velocity_y == 0:
            direction = 0 if velocity_x > 0 else 180
        else:
            direction = math.atan(velocity_y / velocity_x)  # θ=arctan(y/x) (x!=0)
            direction = direction * 180 / math.pi
            if velocity_x < 0:
                direction += 180
            else:
                if velocity_y < 0:
                    direction += 360
                    
    return velocity, direction

start = True
#关闭前处理
def stop():
    global start

    start = False
    print('关闭中...')
    set_velocity.publish(0,0,0)  # 关闭所有电机


if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('joystick', log_level=rospy.DEBUG)
    rospy.on_shutdown(stop)
    # 舵机发布
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    # 麦轮底盘控制
    set_velocity = rospy.Publisher('/chassis_control/set_velocity', SetVelocity, queue_size=1)
    # 蜂鸣器
    buzzer_pub = rospy.Publisher('/sensor/buzzer', Float32, queue_size=1)
    rospy.sleep(0.5)
    
    n = 0
    move_en = False
    connected = False
    pub_time = time.time()
    x, y, z = 0.00, 0.15, 0.20
    dx, dy, dz = 0.005, 0.003, 0.003
    
    while start:
        if os.path.exists("/dev/input/js0") is True:
            if connected is False:
                joystick_init()
                jscount =  pygame.joystick.get_count()
                if jscount > 0:
                    try:
                        js=pygame.joystick.Joystick(0)
                        js.init()
                        connected = True
                    except Exception as e:
                        print(e)
                else:
                    pygame.joystick.quit()
        else:
            if connected is True:
                connected = False
                js.quit()
                pygame.joystick.quit()
                
        if connected is True:
            pygame.event.pump()      
            try:
                if js.get_button(key_map["PSB_R2"]) :
                    z_buf = z - dz
                    asyncio.get_event_loop().run_until_complete(arm_control(x, y, z_buf, 20))
                    target = ik.setPitchRanges((x, y, z_buf), -90, -180, 0)
                    if target:
                        z = z_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                    
                if js.get_button(key_map["PSB_R1"])  :
                    z_buf = z + dz
                    asyncio.get_event_loop().run_until_complete(arm_control(x, y, z_buf, 20))
                    target = ik.setPitchRanges((x, y, z_buf), -90, -180, 0)
                    if target:
                        z = z_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                    
                if js.get_button(key_map["PSB_SQUARE"]) :
                    x_buf = x - dx
                    asyncio.get_event_loop().run_until_complete(arm_control(x_buf, y, z, 20))
                    target = ik.setPitchRanges((x_buf, y, z), -90, -180, 0)
                    if target:
                        x = x_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                    
                if js.get_button(key_map["PSB_CIRCLE"]) :
                    x_buf = x + dx
                    asyncio.get_event_loop().run_until_complete(arm_control(x_buf, y, z, 20))
                    target = ik.setPitchRanges((x_buf, y, z), -90, -180, 0)
                    if target:
                        x = x_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                    
                if js.get_button(key_map["PSB_TRIANGLE"]) :
                    y_buf = y + dy
                    asyncio.get_event_loop().run_until_complete(arm_control(x, y_buf, z, 20))
                    target = ik.setPitchRanges((x, y_buf, z), -90, -180, 0)
                    if target:
                        y = y_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                    
                if js.get_button(key_map["PSB_CROSS"]) :
                    y_buf = y - dy
                    asyncio.get_event_loop().run_until_complete(arm_control(x, y_buf, z, 20))
                    target = ik.setPitchRanges((x, y_buf, z), -90, -180, 0)
                    if target:
                        y = y_buf
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 20, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                    rospy.sleep(0.02)
                  
                  
                hat = js.get_hat(0)
                if hat[1] < 0 :
                    rospy.sleep(0.01)
                    
                elif hat[1] > 0:
                    rospy.sleep(0.01)
                    
                if hat[0] > 0 :
                    rospy.sleep(0.01)
                    
                elif hat[0] < 0:
                    rospy.sleep(0.01)
                    
                if js.get_button(key_map["PSB_START"]):
                    buzzer_pub.publish(0.1)
                    set_velocity.publish(0,0,0)
                    x, y, z = 0.00, 0.15, 0.20
                    asyncio.get_event_loop().run_until_complete(arm_control(x, y, z, 1500))
                    target = ik.setPitchRanges((x, y, z), -90, -180, 0)
                    if target:
                        servo_data = target[1]
                        bus_servo_control.set_servos(joints_pub, 1500, ((1, 200), (2, 500), (3, servo_data['servo3']),
                                        (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
                        rospy.sleep(1.6)
                    else:
                        rospy.sleep(0.2)

                lx = js.get_axis(0)
                ly = -js.get_axis(1)
                rx = js.get_axis(2)
                ry = js.get_axis(3)
                
                lx = 0 if abs(lx) < 0.05 else lx
                ly = 0 if abs(ly) < 0.05 else ly
                rx = 0 if abs(rx) < 0.05 else rx
                ry = 0 if abs(ry) < 0.05 else ry
                
                if lx or ly or rx or ry:
                    if time.time()-pub_time >= 0.15:
                        move_en = True
                        if abs(lx) > abs(ly):
                            velocity = int(Misc.map(abs(lx), 0, 1.0, 0, 200)) 
                        else:
                            velocity = int(Misc.map(abs(ly), 0, 1.0, 0, 200))
                            
                        angular = -rx
                        direction = int(translation(lx*100, ly*100)[1])
                        asyncio.get_event_loop().run_until_complete(chassis_control(velocity, direction, angular))
                        set_velocity.publish(velocity, direction, angular)
                        pub_time = time.time()
                else:
                    if move_en:
                        n += 1
                        rospy.sleep(0.3)
                        set_velocity.publish(0,0,0)
                        asyncio.get_event_loop().run_until_complete(chassis_control(0, 0, 0))
                        if n == 2:
                            n = 0
                            move_en = False
                
            except Exception as e:
                print(e)
                connected = False          
        rospy.sleep(0.01)
