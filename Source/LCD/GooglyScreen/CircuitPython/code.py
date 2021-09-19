import board
import busio
import time
import random
from board import *
import terminalio
import displayio
import vectorio
import digitalio

import googlyscreen

from micropython import const

G_SCALE = const(1)

displayio.release_displays()

i2c = busio.I2C(scl=IO39, sda=IO37)
spi = busio.SPI(clock= IO7, MOSI= IO11, MISO= IO9 )
display_bus = displayio.FourWire( spi, command=IO12, chip_select=IO5)

screen = googlyscreen.GooglyScreen(i2c, display_bus)
count = 0

while True:

    scale = G_SCALE
    screen.refresh(1)
    # time.sleep(30)
    pass
