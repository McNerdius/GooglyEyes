

print("start")

import board
from board import *
import busio
import digitalio
import displayio

displayio.release_displays()

sck = IO7
miso = IO9
mosi = IO11

spi = busio.SPI(clock= sck, MOSI= mosi, MISO= miso )

tft_cs = digitalio.DigitalInOut(IO5)    
tft_dc = digitalio.DigitalInOut(IO12)

from adafruit_rgb_display import ili9341, color565
display = ili9341.ILI9341(spi, cs=tft_cs, dc=tft_dc)
display.fill(color565(255, 0, 0))

print("oof")

while True:
    pass
