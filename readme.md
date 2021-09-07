Googly eyes are fun.

The origin of this project is described in [this imgur album](https://imgur.com/a/oPeQgmw) - giving my 3D printer an amusing face using stick-on googly eyes.  But alas, the stick on googly eyes just aren't googly enough.  And i have a lot of time to kill.

There will be a few parts to this project:

<details>
    <summary>Console googlies</summary>

 Because why not.  A quick and dirty way to visualize the animation and a sanity-check on the googly-math.  I was hoping to pair Spectre's [Live Display](https://spectreconsole.net/live/live-display) with [Canvas Image](https://spectreconsole.net/widgets/canvas-image) but it appears they may not be compatible.  So for now it's a flickery console clear + full redraw.  No pixel-level work here, just using ImageSharp's `EllipsePolygon` to draw on Spectre's `CanvasImage` which has a `MaxWidth` set to squish pixels into ["coxels"](https://twitter.com/SimonCropp/status/1331554791726534657?s=20).

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

This is the "real" project.  Coupling either a [D1 Mini](https://www.wemos.cc/en/latest/d1/d1_mini.html) or [S2 Mini](https://www.wemos.cc/en/latest/s2/s2_mini.html) with a [2.4" LCD](https://www.wemos.cc/en/latest/d1_mini_shield/tft_2_4.html) and an accelerometer to feed x-axis movement data to the software googlies.  

And since it's keeping an eye on movement, it'll know when the print is done and do IoT things to let me know.  (Not an Octoprint user yet, maybe when i get a 2nd printer. :) 
    
Initial version will be done in MicroPython - hopefully performance is OK.  If not, Arduino it is.  (D1/S2 Minis can run either!)

Ponderings:
* the LCD is touch-capable.  "follow my finger" needs to happen.
* the accelerometer has "double tap" recognition, this is likely what will be used to initiate "let me know when the print is done" mode.
* toss in a humidity sensor to track ambient humidity ?  
* ...
</details>

---

Credit to [adafruit](https://learn.adafruit.com/hallowing-googly-eye) for the googly-bouncing math/algorithm.

I've implemented a simulated LIS3DH to make sure the acceleration numbers are in check with those that the Adafruit code would be dealing with, apart from the elaspsed times (48mhz vs 3.6ghz and all), and actual g-forces their device experiences when shaken.  

Two annoyances remain:

Given constantly changing directons, as will be the case when 3D printing, the pupil "jitters" a lot.  Sampling less frequently solves this, but leads to flickering.  I've changed it to only poll for new values every *n* frames.

Fine tuning G_SCALE in particular is fiddly.  When gravity otherwise "looks good", when the pupil settles it will continually "bounce" due to the gravitational constant.  Tweaking Elasticity helps some.