import machine, ujson, utime, network
from machine import Pin, I2C

import httpclient, ssd1306, functions, tm1640

from secrets import functionsUrl

i2c_builtin = I2C(scl=Pin(5), sda=Pin(4), freq=400000)  # 5 = D1, 4 = D2
screen = ssd1306.SSD1306_I2C(128, 32, i2c_builtin, 60)
matrix = tm1640.TM1640(clk=Pin(14), dio=Pin(13))
matrix.write([255, 129, 189, 165, 165, 189, 129, 255])
utime.sleep_ms(500)
matrix.write([0, 0, 0, 0, 0, 0, 0, 0])
# i2c_software = I2C(scl=Pin(13), sda=Pin(12), freq=400000) # 13 = D7, 12 = D6
# screen = ssd1306.SSD1306_I2C(128, 32, i2c_software, 60)

screen.fill(0)
screen.show()
screen.text("hello world !", 16, 12)

while True:

    reading = functions.pull_data()

    screen.fill(0)
    screen.text(str(reading["Temperature"]), 2, 0)
    screen.text(str(reading["Humidity"]), 2, 8)
    screen.text(str(reading["Idle"]), 2, 16)
    screen.show()

    if (reading["Idle"]):
        matrix.brightness(1)
        matrix.write_int(0x55aa55aa55aa55aa)
    else:
        matrix.brightness(7)
        matrix.write([255, 255, 255, 255, 255, 255, 255, 255])

    machine.lightsleep(20000)

# machine.deepsleep(
#     300000
# )
