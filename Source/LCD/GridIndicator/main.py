import machine
import functions, tm1640

adc = machine.ADC(0)

matrix = tm1640.TM1640(clk=machine.Pin(14), dio=machine.Pin(13))
matrix.write([255, 129, 189, 165, 165, 189, 129, 255])

while True:

    v_bat = adc.read()
    reading = functions.pull_data(v_bat)

    matrix.write([0, 0, 0, 0, 0, 0, 0, 0])
    matrix.write(reading["BatteryMatrix"])
    machine.lightsleep(10 * 1000)

    if (reading["Idle"]):
        matrix.brightness(7)
        matrix.write_int(0x55aa55aa55aa55aa)
    else:
        matrix.brightness(1)
        matrix.write(reading["TimeMatrix"])

    machine.lightsleep(50 * 1000)
