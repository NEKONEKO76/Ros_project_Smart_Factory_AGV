#!/usr/bin/python3
# coding=utf8
# Date:2022/06/30
import sys
import time
import signal
import Board as Board

print('''
**********************************************************
*******功能:幻尔科技树莓派扩展板，电机控制例程*********
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

#关闭前处理
def stop(signum, frame):
    Board.setMotor(2, 0)   # 2号电机停止
    
signal.signal(signal.SIGINT, stop)

if __name__ == '__main__':
    Board.setMotor(2,100) # 2号电机,以100速度旋转
    time.sleep(2)         # 延时2S
    Board.setMotor(2,50)  # 2号电机,以50速度旋转
    time.sleep(2)
    Board.setMotor(2,-100) # 2号电机,以-100速度旋转
    time.sleep(2)
    Board.setMotor(2, 0)   # 2号电机停止
    