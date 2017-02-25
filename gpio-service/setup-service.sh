if [ "$EUID" -ne 0 ]
  then echo "Run as root"
  exit
fi

cp gpio17on.sh /etc/init.d
sudo chmod 755 /etc/init.d/gpio17on.sh
update-rc.d gpio17on.sh defaults
service gpio17on start
