<details>
    <summary>GooglyScreen</summary>
MicroPython to start, Arduino if needed.  Animating the googly eyes and periodically sending movement/humidity data to the cloud to start with, touch screen features later.

* [D1 Mini](https://www.wemos.cc/en/latest/d1/d1_mini.html) or [S2 Mini](https://www.wemos.cc/en/latest/s2/s2_mini.html)
* [2.4" ILI9341 LCD](https://www.wemos.cc/en/latest/d1_mini_shield/tft_2_4.html) with XPT2046 touch controller.
  * An [active repo](https://github.com/rdagger/micropython-ili9341) with MicroPython drivers for both LCD & touch controller.
* [LIS3DH Accelerometer](https://www.adafruit.com/product/2809)
  * Adafruit's [CircuitPython driver](https://github.com/adafruit/Adafruit_CircuitPython_LIS3DH)
  * A 2018 [MicroPython port](https://github.com/hdsjulian/micropov/blob/master/lis3dh.py)
* [Si7021 Temp/RH Sensor](https://www.adafruit.com/product/3251) 
  * Adafruit's [CircuitPython driver](https://github.com/adafruit/Adafruit_CircuitPython_SI7021)
  * A 2017 [MicroPython port](https://github.com/chrisbalmer/micropython-si7021)
* ...
</details>

<details>
    <summary>GridIndicator</summary>
Another MicroPython project, periodically polling the cloud data.  I'm picturing a ~2" cube with a single bouncing LED while waiting for "complete" signal, and a full-on screen on complete.

* [D1 Mini](https://www.wemos.cc/en/latest/d1/d1_mini.html)
* [Matrix LED Shield](https://www.wemos.cc/en/latest/d1_mini_shield/matrix_led.html) and [this driver](https://github.com/mcauser/micropython-tm1640)
* 9v (PP3) battery with regulation circuitry sandwiched underneath LED shield on a [proto shield](https://www.wemos.cc/en/latest/d1_mini_shield/protoboard.html).  Not a fancy battery, but cheap and i always have them around for the smoke detectors.  They're about the same footprint as a D1 Mini too.
* ...
</details>

<details>
    <summary>GooglyFunctions</summary>
Quick and dirty Azure Functions [HTTP Triggers](https://docs.microsoft.com/en-us/azure/azure-functions/functions-bindings-http-webhook-trigger?tabs=csharp) & Blob Storage [Bindings](https://docs.microsoft.com/en-us/azure/azure-functions/functions-bindings-storage-blob).
</details>
