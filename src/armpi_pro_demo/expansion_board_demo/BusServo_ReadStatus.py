import time
import Board

print('''
**********************************************************
*********功能:幻尔科技树莓派扩展板，串口舵机读取状态例程**********
**********************************************************
----------------------------------------------------------
Official website:https://www.hiwonder.com
Online mall:https://hiwonder.tmall.com
----------------------------------------------------------
Tips:
 * 按下Ctrl+C可关闭此次程序运行，若失败请多次尝试！
----------------------------------------------------------
''')

def getBusServoStatus():
    Pulse = Board.getBusServoPulse(6) # 获取6号舵机的位置信息
    Temp = Board.getBusServoTemp(6)   # 获取6号舵机的温度信息
    Vin = Board.getBusServoVin(6)     # 获取6号舵机的电压信息
    print('Pulse: {}\nTemp:  {}\nVin:   {}\n'.format(Pulse, Temp, Vin)) # 打印状态信息
    time.sleep(0.5) # 延时方便查看

   
Board.setBusServoPulse(6, 500, 1000) # 6号舵机转到500位置用时1000ms
time.sleep(1) # 延时1s
getBusServoStatus() # 读取总线舵机状态
 
