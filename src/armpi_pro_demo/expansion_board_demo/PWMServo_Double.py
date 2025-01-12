#!/usr/bin/python3
# coding=utf8
import sys
import time
import Board as Board

print('''
**********************************************************
*****功能:幻尔科技树莓派扩展板，PWM多舵机控制例程******
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
    for i in range(5):
        Board.setPWMServoPulse(1, 1500, 1000) # 1号舵机转到1500位置用时1000ms
        time.sleep(1)
        Board.setPWMServoPulse(1, 2500, 1000) # 1号舵机转到2500位置用时1000ms
        time.sleep(1)

        Board.setPWMServoPulse(2, 1500, 1000) # 2号舵机转到1500位置用时1000ms
        time.sleep(1)
        Board.setPWMServoPulse(2, 2500, 1000) # 2号舵机转到2500位置用时1000ms
        time.sleep(1)











