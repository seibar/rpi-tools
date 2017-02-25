# gpio-service

A service built for raspberry pi to automatically switch pin GPIO 17 when the raspberry pi turns on.

## Setup
```
npm install
```

## Usage
```
node on
node off
```

## Service installation (Optional)
To install the init.d service and start it up. This service will turn on GPIO pin 17 when the pi starts up. The pin will turn off when the pi is about to shutdown.

Note the first command should not be run as root.

```
bash init-service.sh
sudo bash setup-service.sh
```

### To start/stop the service manually.
```
sudo service gpio17on start
sudo service gpio17on stop
```

## See also
* Digital Loggers IoT relay: https://www.digital-loggers.com/iot.html
