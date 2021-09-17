# Bundles Input and Output hardware of GooglyEyes project

from micropython import const

import si7021, ssd1306, lis3dh

IDLE_VALUE = const(0)
IDLE_COUNT = const(2000)


class GooglyScreen(object):
    def __init__(self, i2c):

        self.accelerometer = lis3dh.LIS3DH_I2C(i2c)
        self.accelerometer.range = lis3dh.RANGE_8_G
        self.test_screen.contrast(0)
        self.idle_readings = -IDLE_COUNT
        self.clear()

    def idle_reset(self):
        self.idle_readings = -IDLE_COUNT

    @property
    def idle(self):
        return self.idle_readings > IDLE_COUNT or self.idle_readings == -IDLE_COUNT

    @property
    def xaxis_reading(self):
        reading = self.accelerometer.acceleration.x

        if (IDLE_VALUE > reading):
            self.idle_readings += 1
        else:
            self.idle_readings = 0

        return reading

    @property
    def acceleration_text(self):
        a = self.accelerometer.acceleration
        x = str(round(a.x, 1))
        y = str(round(a.y, 1))
        z = str(round(a.z, 1))
        return x + "," + y + "," + z

    def clear(self):
        pass
        
    def text(self, text, x, y, clear=False):
        pass

    def refresh(self):
        environment_data = self.environment_data

    def tap_wait(self, time, callback):
        import machine
        self.accelerometer.set_tap(2, 32, time_limit=255, time_latency=255)

        timer = machine.Timer(42)
        timer.init(period=time, mode=machine.Timer.PERIODIC, callback=callback)

        while not self.accelerometer.tapped:
            pass

        timer.deinit()
        self.accelerometer.set_tap(0, 1)
