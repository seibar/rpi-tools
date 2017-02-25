#!/bin/sh
### BEGIN INIT INFO
# Provides:          gpio17on
# Required-Start:    mountdevsubfs
# Required-Stop:
# X-Start-Before:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Turn on GPIO pin 17
# Description:       Turn on GPIO pin 17
### END INIT INFO

# Author: AJ Rabe <aj.rabe@gmail.com>

do_start () {
  node /home/pi/rpi-tools/gpio/on
}

do_stop () {
  node /home/pi/rpi-tools/gpio/off
}

case "$1" in
  start)
    do_start
    exit 0
    ;;
  stop)
    do_stop
    exit 0
    ;;
esac
