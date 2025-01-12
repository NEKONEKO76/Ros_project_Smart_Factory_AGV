#!/bin/bash
source /opt/ros/melodic/setup.bash
source /home/ubuntu/armpi_pro/devel/setup.bash
export ROS_HOSTNAME=ubuntu
export ROS_MASTER_URI=http://ubuntu:11311

roslaunch /home/ubuntu/armpi_pro/src/armpi_pro_bringup/launch/start_sensor.launch
