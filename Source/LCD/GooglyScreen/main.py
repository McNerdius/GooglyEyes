import machine, ujson, utime, network
from machine import Pin, I2C, ADC

import httpclient, ssd1306, si7021, lis3dh

from secrets import functionsUrl


def read_si7021(sensor):
    return {
        "Temperature":
        round(si7021.convert_celcius_to_fahrenheit(sensor.temperature), 1),
        "Humidity":
        round(sensor.relative_humidity, 1),
    }


i2c_builtin = I2C(scl=Pin(5), sda=Pin(4), freq=400000)  # 5 = D1, 4 = D2
test_screen = ssd1306.SSD1306_I2C(128, 32, i2c_builtin)
rh_temp_sensor = si7021.Si7021(i2c_builtin)
accelerometer = lis3dh.LIS3DH_I2C(i2c_builtin)

test_screen.contrast(0)

test_screen.fill(0)
test_screen.text("hello world", 10, 12)
test_screen.show()
machine.lightsleep(5000)

station = network.WLAN(network.STA_IF)
while not station.isconnected():
    utime.sleep_ms(200)

count = 0

while True:

    environment_data = read_si7021(rh_temp_sensor)
    temp = str(environment_data["Temperature"])
    rh = str(environment_data["Humidity"])

    acceleration_data = accelerometer.acceleration
    x = str(round(acceleration_data.x, 1))
    y = str(round(acceleration_data.y, 1))
    z = str(round(acceleration_data.z, 1))

    test_screen.fill(0)
    test_screen.text(temp + " f", 2, 0, 1)
    test_screen.text(rh + " rh", 2, 8, 1)
    test_screen.text(x + "," + y + "," + z, 2, 16, 1)
    test_screen.show()

    count += 1

    if (count == 10 * 20):  # 20 seconds - JUST FOR TESTING !!!
        count = 0
        print("pushing data: " + ujson.dumps(environment_data))
        httpclient.post(functionsUrl, json=environment_data, timeout=60)

    machine.lightsleep(100)

# machine.deepsleep(
#     300000
# )  # 5min.  Originally 10 min but 5 min is better for heater on/off timing.
