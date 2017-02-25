if [ "$EUID" -eq 0 ]
  then echo "Do not run as root"
  exit
fi

NODEPATH=$(which node)

echo "#!/bin/sh
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
  $NODEPATH /home/pi/rpi-tools/gpio-service/on
}

do_stop () {
  $NODEPATH /home/pi/rpi-tools/gpio-service/off
}

case \"\$1\" in
  start)
    do_start
    exit 0
    ;;
  stop)
    do_stop
    exit 0
    ;;
esac
" > gpio17on.sh
