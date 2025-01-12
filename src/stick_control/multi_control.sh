#!/bin/bash

python3 stick_control.py &
sleep 1
python3 multi_control_server.py &
sleep 1
python3 multi_control_client.py &
