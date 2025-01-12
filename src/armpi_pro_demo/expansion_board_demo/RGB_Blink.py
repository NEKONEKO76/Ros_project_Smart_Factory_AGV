import time
import Board

print('''
**********************************************************
*******功能:幻尔科技树莓派扩展板，RGB灯闪烁例程********
**********************************************************
----------------------------------------------------------
Official website:https://www.hiwonder.com
Online mall:https://hiwonder.tmall.com
----------------------------------------------------------
Tips:
 * 按下Ctrl+C可关闭此次程序运行，若失败请多次尝试！
----------------------------------------------------------
''')


def stop():         
    print('关闭中...')
    Board.RGB.setPixelColor(0, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB1关闭
    Board.RGB.setPixelColor(1, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB2关闭
    Board.RGB.show()

def start():
    Board.RGB.setPixelColor(0, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB1设置为红色
    Board.RGB.setPixelColor(1, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB2设置为红色
    Board.RGB.show()
    time.sleep(1)

    Board.RGB.setPixelColor(0, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB1关闭
    Board.RGB.setPixelColor(1, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB2关闭
    Board.RGB.show()
    time.sleep(1)   

    for i in range(3):
        Board.RGB.setPixelColor(0, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB1设置为红色
        Board.RGB.show()
        time.sleep(0.5)
        Board.RGB.setPixelColor(0, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB1关闭
        Board.RGB.show()
        time.sleep(0.5)
         
        Board.RGB.setPixelColor(1, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB2设置为红色
        Board.RGB.show()
        time.sleep(0.5)
        Board.RGB.setPixelColor(1, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB2关闭
        Board.RGB.show()
        time.sleep(0.5)

    Board.RGB.setPixelColor(0, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB1设置为红色
    Board.RGB.setPixelColor(1, Board.PixelColor(255, 0, 0)) # 将扩展板的LED灯RGB2设置为红色
    Board.RGB.show()
    time.sleep(1)

    Board.RGB.setPixelColor(0, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB1关闭
    Board.RGB.setPixelColor(1, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB2关闭
    Board.RGB.show()
    time.sleep(1)   


if __name__ == '__main__': 
    Board.RGB.setPixelColor(0, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB1关闭
    Board.RGB.setPixelColor(1, Board.PixelColor(0, 0, 0)) # 将扩展板的LED灯RGB2关闭
    Board.RGB.show()
    time.sleep(1)	 
    while True:
        try:
            start()	
        except KeyboardInterrupt:
            stop()
            print('已关闭')
            break
    
