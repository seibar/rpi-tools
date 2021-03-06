const Gpio = require('onoff').Gpio;

const pin = new Gpio(17, 'out');

pin.writeSync(0);

process.on('SIGINT', function () {
	pin.unexport();
});
