Googly eyes are fun.

The origin of this project is described in [this imgur album](https://imgur.com/a/oPeQgmw) - giving my 3D printer an amusing face using stick-on googly eyes.  But alas, the stick on googly eyes just aren't googly enough.  And i have a lot of time to kill.

There will be a few parts to this project:

<details>
    <summary>Console googlies</summary>

 Because why not.  A quick and dirty way to visualize the animation and a sanity-check on the googly-math.  I was hoping to pair Spectre's [Live Display](https://spectreconsole.net/live/live-display) with [Canvas Image](https://spectreconsole.net/widgets/canvas-image) but it appears they may not be compatible.  So for now it's a flickery console clear + full redraw per frame.  No pixel-level work here, just using ImageSharp's `EllipsePolygon` to draw on Spectre's `CanvasImage` which has a `MaxWidth` set to squish pixels into ["coxels"](https://twitter.com/SimonCropp/status/1331554791726534657?s=20).

Simulated constant random x-axis accelerometer input:

<img src="googly_simulated.gif" alt="simulated" width="400" style="display: block; margin: auto;"/>

And an initial random "push" then letting gravity do its thing:

<img src="googly_gravity.gif" alt="gravity" width="400" style="display: block; margin: auto;"/>

</details>

<details>
    <summary>Blazor googlies</summary>

Using `Excubo.Blazor.Canvas` to start.  The console project aids in learning/experimenting with the googly-math; this project about getting the pixel-level updates done right without using pointers as the [Arduino code](https://github.com/adafruit/Adafruit_Learning_System_Guides/blob/main/Hallowing_Googly_Eye/Hallowing_Googly_Eye.ino#L256) from Adafruit that i'm using as a reference does.

</details>

<details>
    <summary>LCD googlies for 3D printer</summary>

This is the heart of the project.  Coupling either a [D1 Mini](https://www.wemos.cc/en/latest/d1/d1_mini.html) or [S2 Mini](https://www.wemos.cc/en/latest/s2/s2_mini.html) with a [2.4" LCD](https://www.wemos.cc/en/latest/d1_mini_shield/tft_2_4.html) and an accelerometer to feed x-axis movement data to the software googlies.  

And since it's keeping an eye on movement, it'll know when the print is done and do IoT things to let me know.  (Not an Octoprint user yet, maybe when i get a 2nd printer. :) 
    
Initial version will be done in MicroPython - hopefully performance is OK.  If not, Arduino it is.  (D1/S2 Minis can run either!)

Ponderings:
* the LCD is touch-capable.  "follow my finger" needs to happen.
* the accelerometer has "double tap" recognition, this is likely what will be used to initiate "let me know when the print is done" mode.
* toss in a humidity sensor to track ambient humidity ?  
* ...
</details>

---

Credit to [adafruit](https://learn.adafruit.com/hallowing-googly-eye) for the googly-bouncing math/algorithm.  I'm still sorting out a few things in particular:

* Gravity.  Adafruit's [animation](https://learn.adafruit.com/assets/65226) shows the googly settling toward the bottom as one would expect, and the [project's page](https://learn.adafruit.com/hallowing-googly-eye/software) mentions gravity - but the [value mentioned](https://github.com/adafruit/Adafruit_Learning_System_Guides/blob/main/Hallowing_Googly_Eye/Hallowing_Googly_Eye.ino#L146) just scales acceleration.  Nothing about the code as far as i can tell pulls the pupil down from the center - given a virtual "tap" and no more input, the googlies will settle at the *center*, not the bottom.  My current naive approach of adding a constant value to the y direction means that it will never truly "settle" but keep making tiny bounces at the bottom.
* Constant Motion vs "tap-and-settle".  Adapting the Adafruit code's Scale/Elasticity/Drag approach has been fiddly.  After choosing values that "look good" given continuous simulated accelerometer input - decent speed, bounciness, gravity/settling - switching off continuous input the animation is slow with a low-gravity effect.
* After a while with continuous input, acceleration sometimes trends toward bonkers.  It's hard to find a balance between always-too-slow and sometimes-goes-bonkers.

Hopefully less playing with constants and more learning the math will help me get this stuff sorted.