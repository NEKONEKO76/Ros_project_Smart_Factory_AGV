#!/usr/bin/python3
# coding=utf8
import sys
import time
import threading
import Board

print('''
**********************************************************
******功能:幻尔科技树莓派扩展板，PWM舵机变速例程*******
**********************************************************
----------------------------------------------------------
Official website:https://www.hiwonder.com
Online mall:https://hiwonder.tmall.com
----------------------------------------------------------
Tips:
 * 按下Ctrl+C可关闭此次程序运行，若失败请多次尝试！
----------------------------------------------------------
''')

if sys.version_info.major == 2:
    print('Please run this program with python3!')
    sys.exit(0)
    
    
if __name__ == '__main__':
   for i in range(5): #循环5次
        Board.setPWMServoPulse(1, 500, 1000) # 1号接口PWM舵机运动到500位置用时1000ms
        time.sleep(1)
        Board.setPWMServoPulse(1, 1500, 300) # 1号接口PWM舵机运动到1500位置用时300ms
        time.sleep(1)
        Board.setPWMServoPulse(1, 500, 1000) # 1号接口PWM舵机运动到500位置用时1000ms
        
