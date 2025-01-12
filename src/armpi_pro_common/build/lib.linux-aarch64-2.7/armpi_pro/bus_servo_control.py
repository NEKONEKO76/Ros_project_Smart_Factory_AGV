#!/usr/bin/env python3
import rospy
import signal
from hiwonder_servo_msgs.msg import MultiRawIdPosDur
from hiwonder_servo_msgs.msg import RawIdPosDur

running = True
def shutdown(signum, frame):
    global running

    running = False
    rospy.loginfo('shutdown')
    rospy.signal_shutdown('shutdown')

signal.signal(signal.SIGINT, shutdown)

def set_servos(pub, duration, pos_s):
    msg = MultiRawIdPosDur(id_pos_dur_list=list(map(lambda x: RawIdPosDur(int(x[0]), int(x[1]), int(duration)), pos_s)))
    pub.publish(msg)

if __name__ == '__main__':
    rospy.init_node('test_servo_control', anonymous=True)
    joints_pub = rospy.Publisher('/servo_controllers/port_id_1/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
    while running:
        try:
            set_servos(joints_pub, 1000, ((6, 350), (1, 200)))
            rospy.sleep(1)
            set_servos(joints_pub, 1000, ((6, 650), (1, 500)))
            rospy.sleep(1)
        except Exception as e:
            print(e)
            break

