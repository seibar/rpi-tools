#!/bin/sh

cp ./init.d/gpio17on.sh /etc/init.d
update-rc.d gpio17on.sh defaults
service gpio17on start
