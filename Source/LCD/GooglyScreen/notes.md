Hardware used:
* SSD1306 - testing only
* LIS3DH  - Accelerometer
* Si7021  - RH/Temp
* ILI9341 - 2.4" TFT
* XPT2046 - Touch controller

-[ ] toggle wifi on/of per-push
-[ ] 240mhz for googly animation, 160mhz for idle

-[ ] set MotionlessReadings to -1 and push to GooglyFunctions along with RH

-[ ] generate FrameBuffers for Eye and Pupil.  Does using framebuf.MONO_ save memory ?

-[ ] draw centered eyes
-[ ]   later: random motion

* start:

-[ ] wait for double-tap, pushing MotionlessReadings and RH every 30min

-[ ] double-tap: Set MotionlessReadings to 0 and push along with RH

* googly-loop:
-[ ]  read LIS3DH
-[ ]  do left eye math
-[ ]  read LIS3DH again ?
-[ ]  do right eye math
-[ ]  update screen via bounding rectangles
-[ ]  keep track of MotionlessReadings.  after 10s or so worth, exit googly loop

* post-googly-loop:

-[ ] draw centered eyes
-[ ]   later: random motion
-[ ] wait for double-tap to confirm print completion, pushing MotionlessReadings and RH every 30min
-[ ] double-tap: Set MotionlessReadings to -1 and push along with RH
-[ ] goto start
