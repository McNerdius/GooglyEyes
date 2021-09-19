# Bundles Input and Output hardware of GooglyEyes project

from micropython import const

import adafruit_lis3dh
import adafruit_ili9341

import displayio
import terminalio
import random
import vectorio
from adafruit_display_text import label

from googlyeye import GooglyEye
import googlymath

IDLE_VALUE = const(0)
IDLE_COUNT = const(2000)


class GooglyScreen(object):
    def __init__(self, i2c, fourwire):

        self.accelerometer = adafruit_lis3dh.LIS3DH_I2C(i2c)
        self.accelerometer.range = adafruit_lis3dh.RANGE_8_G
        self.idle_readings = -IDLE_COUNT
        
        self.display = adafruit_ili9341.ILI9341(fourwire, width=320, height=240, rotation= 180)

        self.left_eye = GooglyEye(80,32,80,80)
        self.right_eye = GooglyEye(80,44,80+160,80)
        
        self.clear()

    def idle_reset(self):
        self.idle_readings = -IDLE_COUNT

    @property
    def idle(self):
        return self.idle_readings > IDLE_COUNT or self.idle_readings == -IDLE_COUNT

    @property
    def acceleration_text(self):
        a = self.accelerometer.acceleration
        x = str(round(a.x, 1))
        y = str(round(a.y, 1))
        z = str(round(a.z, 1))
        return x + "," + y + "," + z

    def clear(self):

        splash = displayio.Group()
        self.display.show(splash)

        top_text_group = displayio.Group(scale=2, x=90, y=20)
        # self.top_label = label.Label(terminalio.FONT, text="Hello World!", color=0xFFFFFF)
        # top_text_group.append(self.top_label)  # Subgroup for text scaling
        splash.append(top_text_group)

        main_group = displayio.Group(x=0,y=39)

        palette_black = displayio.Palette(1)
        palette_black[0] = 0x000000
        palette_white = displayio.Palette(1)
        palette_white[0] = 0xFFFFFF

        main_group.append(vectorio.Rectangle(pixel_shader=palette_black, width= 320, height= 160, x= 0, y= 0))
        main_group.append(vectorio.Circle(pixel_shader=palette_white, radius=80, x=80, y=80))
        main_group.append(vectorio.Circle(pixel_shader=palette_white, radius=80, x=80+160, y=80))

        main_group.append(self.left_eye.pupil )
        main_group.append(self.right_eye.pupil)

        splash.append(main_group)

        bottom_text_group = displayio.Group(scale=2, x=70, y=220)
        # self.bottom_label = label.Label(terminalio.FONT, text=self.acceleration_text, color=0xFFFFFF)
        # bottom_text_group.append(self.bottom_label)  # Subgroup for text scaling
        splash.append(bottom_text_group)

    def read_accelerometer(self):
        reading = self.accelerometer.acceleration
        return (reading.x*4,reading.y/4)

    def refresh(self, scale):

        (aX, aY) = self.read_accelerometer()
        googlymath.move(self.left_eye, aX * scale, aY * scale )

        (aX, aY) = self.read_accelerometer()
        googlymath.move(self.right_eye, aX * scale, aY * scale )

        # self.top_label.text = str(self.left_eye.pupil_position)
        # self.bottom_label.text = self.acceleration_text

    def tap_wait(self, time, callback):
        import machine
        self.accelerometer.set_tap(2, 32, time_limit=255, time_latency=255)

        timer = machine.Timer(42)
        timer.init(period=time, mode=machine.Timer.PERIODIC, callback=callback)

        while not self.accelerometer.tapped:
            pass

        timer.deinit()
        self.accelerometer.set_tap(0, 1)
