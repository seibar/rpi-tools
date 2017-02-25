if [ "$EUID" -ne 0 ]
  then echo "Run as root"
  exit
fi

service gpio17on stop
rm /etc/init.d/gpio17on.sh
update-rc.d gpio17on remove
