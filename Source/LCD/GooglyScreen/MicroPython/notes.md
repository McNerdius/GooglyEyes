Hardware used:
* SSD1306 - testing only        ~15ma ?                     => 220 ohm
* LIS3DH  - Accelerometer       185uA + 3ma i2c             => 660 ohm     
* Si7021  - RH/Temp             180uA + 3ma i2c             => 660 ohm
* ILI9341 - 2.4" TFT            ↓↓↓ 
* XPT2046 - Touch controller    ~70ma between the two ?     => 47 ohm

- [x] toggle wifi on/of per-push
- [ ] 240mhz for googly animation, 160mhz for idle

- [x] set Idle to -1 and push to GooglyFunctions along with RH

- [x] generate FrameBuffers for Eye and Pupil.

- [ ] draw centered eyes
- [ ]   later: random motion

* start:

- [x] wait for double-tap, pushing Idle and RH every 30min

- [x] double-tap: ~~Set Idle to 0 and~~ push along with RH

* googly-loop:
- [x]  read LIS3DH
- [ ]  do left eye math
- [ ]  read LIS3DH again ?
- [ ]  do right eye math
- [ ]  update screen via bounding rectangles
- [x]  keep track of Idle.  after 10s or so worth, exit googly loop

* post-googly-loop:

- [ ] draw centered eyes
- [ ]   later: random motion
- [x] wait for double-tap to confirm print completion, pushing Idle and RH every 30min
- [x] double-tap: Set Idle to -1 and push along with RH
- [x] goto start
