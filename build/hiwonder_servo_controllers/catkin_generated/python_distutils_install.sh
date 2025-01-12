#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/armpi_pro/src/hiwonder_servo_controllers"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/armpi_pro/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/armpi_pro/install/lib/python2.7/dist-packages:/home/ubuntu/armpi_pro/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/armpi_pro/build" \
    "/usr/bin/python2" \
    "/home/ubuntu/armpi_pro/src/hiwonder_servo_controllers/setup.py" \
     \
    build --build-base "/home/ubuntu/armpi_pro/build/hiwonder_servo_controllers" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ubuntu/armpi_pro/install" --install-scripts="/home/ubuntu/armpi_pro/install/bin"
