#!/usr/bin/env python3
# encoding: utf-8
# websocket中继广播下行客户端，连接至服务down通道，接受下行数据并做处理
# ==============================================================
import os
import time
import rospy
import asyncio
import logging
import websockets
from functools import partial
from chassis_control.msg import *
from concurrent.futures import ThreadPoolExecutor
from jsonrpc import JSONRPCResponseManager, Dispatcher
from hiwonder_servo_msgs.msg import MultiRawIdPosDur
from kinematics import ik_transform
from armpi_pro import bus_servo_control

logging.basicConfig(level=logging.WARNING)
logger = logging.getLogger("multi_control_client")
logger.setLevel(level=logging.WARNING)
executor = ThreadPoolExecutor()
dispatcher = Dispatcher()

ik = ik_transform.ArmIK()
 
start = True
#关闭前处理
def stop():
    global start

    start = False
    set_velocity.publish(0,0,0)  # 关闭所有电机
    
print('multi_control_client start')

# 初始化节点
rospy.init_node('multi_control_client', log_level=rospy.DEBUG)
rospy.on_shutdown(stop)
# 舵机发布
joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
# 麦轮底盘控制
set_velocity = rospy.Publisher('/chassis_control/set_velocity', SetVelocity, queue_size=1)


@dispatcher.add_method
def chassis_control(v,d,a):
    if not os.path.exists("/dev/input/js0"):  
        set_velocity.publish(v,d,a)
            
@dispatcher.add_method
def arm_control(x,y,z,t):
    if not os.path.exists("/dev/input/js0"):
        target = ik.setPitchRanges((x, y, z), -90, -180, 0)
        if target:
            servo_data = target[1]
            bus_servo_control.set_servos(joints_pub, t, ((1, 200), (2, 500), (3, servo_data['servo3']),
                            (4, servo_data['servo4']),(5, servo_data['servo5']),(6, servo_data['servo6'])))
        rospy.sleep(t/1000.0)

async def listener():
    while start:
        try:
            websocket = await websockets.connect('ws://192.168.149.1:7788/down')
            async for msg in websocket:
                logger.debug(msg)
                asyncio.ensure_future(
                    loop.run_in_executor(executor, partial(JSONRPCResponseManager.handle, dispatcher=dispatcher), msg))
        except Exception as e:
            logger.error(e)
        await asyncio.sleep(2)


print('multi_control_server running')
loop = asyncio.get_event_loop()
asyncio.run_coroutine_threadsafe(listener(), loop)
loop.run_forever()

