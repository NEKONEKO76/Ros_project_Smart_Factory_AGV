from distutils.core import setup
import sys
import os

print('''sudo python3 setup.py install''')

setup(name="kinematics", version="1.0", description="kinematics for arm", author="aiden", py_modules=['kinematics.ik_transform'])

if sys.argv[1] == 'install':
    try:
        os.system('sudo cp ./kinematics/inverse_kinematics.so /usr/local/lib/python' + str(sys.version[:3]) + '/dist-packages/kinematics/')
    except Basexception as e:
        print(e)
