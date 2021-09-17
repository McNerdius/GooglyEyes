import board
import busio
import time
import random
from board import *
import terminalio
import displayio
import vectorio
import digitalio
from adafruit_display_text import label
import adafruit_ili9341

displayio.release_displays()

sck = IO7
miso = IO9
mosi = IO11

spi = busio.SPI(clock= sck, MOSI= mosi, MISO= miso )

tft_cs = IO5
tft_dc = IO12

display_bus = displayio.FourWire(
    spi, command=tft_dc, chip_select=tft_cs
)
display = adafruit_ili9341.ILI9341(display_bus, width=320, height=240)

# Make the display context
splash = displayio.Group()
display.show(splash)

# Draw a label
top_text_group = displayio.Group(scale=2, x=90, y=20)
text = "Hello World!"
text_area = label.Label(terminalio.FONT, text=text, color=0xFFFFFF)
top_text_group.append(text_area)  # Subgroup for text scaling
splash.append(top_text_group)

main_group = displayio.Group(x=0,y=39)

# bitmap = displayio.Bitmap(320, 160, 3)

palette_black = displayio.Palette(1)
palette_black[0] = 0x000000  
palette_white = displayio.Palette(1)
palette_white[0] = 0xFFFFFF 

palette = displayio.Palette(3)
palette.make_transparent(0)
palette[0] = 0x000000  
palette[1] = 0x3C3C3C  
palette[2] = 0xFFFFFF  

main_group.append(vectorio.Rectangle(pixel_shader=palette_black, width= 320, height= 160, x= 0, y= 0))
main_group.append(vectorio.Circle(pixel_shader=palette_white, radius=80, x=80, y=80))
main_group.append(vectorio.Circle(pixel_shader=palette_white, radius=80, x=80+160, y=80))

left = vectorio.Circle(pixel_shader=palette_black, radius=32, x=80, y=80)
right = vectorio.Circle(pixel_shader=palette_black, radius=44, x=80+160, y=80)

main_group.append(left)
main_group.append(right)

splash.append(main_group)

while True:

    left.x +=  random.choice([-1,0,1])
    left.y +=  random.choice([-1,0,1])
    right.x += random.choice([-1,0,1])
    right.y += random.choice([-1,0,1])
    time.sleep(0.05)
    pass
