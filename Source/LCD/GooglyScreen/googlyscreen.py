# Bundles Input and Output hardware of GooglyEyes project

from micropython import const

import si7021, ssd1306, lis3dh

IDLE_VALUE = const(0)
IDLE_COUNT = const(2000)


class GooglyScreen(object):
    def __init__(self, i2c):

        self.test_screen = ssd1306.SSD1306_I2C(128, 32, i2c)
        self.rh_temp_sensor = si7021.Si7021(i2c)
        self.accelerometer = lis3dh.LIS3DH_I2C(i2c)
        self.accelerometer.range = lis3dh.RANGE_8_G
        self.test_screen.contrast(0)
        self.idle_readings = -IDLE_COUNT
        self.clear()

    def idle_reset(self):
        self.idle_readings = -IDLE_COUNT

    @property
    def environment_data(self):
        return {
            "Temperature":
            round(
                si7021.convert_celcius_to_fahrenheit(
                    self.rh_temp_sensor.temperature), 1),
            "Humidity":
            round(self.rh_temp_sensor.relative_humidity, 1),
            "Idle":
            self.idle
        }

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
        self.test_screen.fill(0)
        self.test_screen.show()

    def text(self, text, x, y, clear=False):
        if (clear):
            self.test_screen.fill(0)
        self.test_screen.text(text, x, y)
        self.test_screen.show()

    def refresh(self):
        environment_data = self.environment_data
        temp = str(environment_data["Temperature"])
        rh = str(environment_data["Humidity"])

        self.test_screen.fill(0)
        self.test_screen.text(temp + " f  " + rh + " rh", 8, 0, 1)
        self.test_screen.text("idle: " + str(self.idle), 24, 12, 1)
        self.test_screen.text(self.acceleration_text, 2, 24, 1)

        self.test_screen.show()

    def tap_wait(self, time, callback):
        import machine
        self.accelerometer.set_tap(2, 32, time_limit=255, time_latency=255)

        timer = machine.Timer(42)
        timer.init(period=time, mode=machine.Timer.PERIODIC, callback=callback)

        while not self.accelerometer.tapped:
            pass

        timer.deinit()
        self.accelerometer.set_tap(0, 1)
