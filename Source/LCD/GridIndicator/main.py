import machine
import functions, tm1640

matrix = tm1640.TM1640(clk=machine.Pin(14), dio=machine.Pin(13))
matrix.write([255, 129, 189, 165, 165, 189, 129, 255])
machine.lightsleep(500)

while True:

    reading = functions.pull_data()

    if (reading["Idle"]):
        matrix.brightness(7)
        matrix.write_int(0x55aa55aa55aa55aa)
    else:
        matrix.brightness(1)
        matrix.write(reading["Time"])

    machine.lightsleep(59 * 1000)
