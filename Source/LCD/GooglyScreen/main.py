import machine
from machine import Pin, I2C

import googlyscreen, functions

i2c_builtin = I2C(scl=Pin(5), sda=Pin(4), freq=400000)  # 5 = D1, 4 = D2

screen = googlyscreen.GooglyScreen(i2c_builtin)


def push_data():
    data = screen.environment_data
    functions.push_data(data)


push_data()

screen.text("hello world !", 14, 0)


def main_loop():

    while True:

        vX = screen.xaxis_reading
        screen.refresh()

        count += 1

        if (count == 200):  # 20 seconds - JUST FOR TESTING !!!
            count = 0
            screen.text("pushing data...", 16, 12, clear=True)
            functions.push_data()

        machine.lightsleep(100)

        if (screen.idle):
            return


while True:

    screen.text("double tap", 12, 16)
    screen.text("to continue", 12, 24)
    screen.tap_wait(60 * 1000, push_data())  # 30 *

    push_data()
    count = 0
    screen.idle_reset()

    main_loop()
