using System;

namespace GooglyEyes.Functions;

// this could be two different types if it mattered,
// but lumping it together keeps things simple.
// GooglyScreen & Logging: { Idle, Time }
// GooglyIndicator: { Idle, TimeMatrix, Battery }
public class Reading
{
    // * GooglyScreen pushes "Idle = true" to AddReading
    //                     when no movement is detected.
    // * Idle and current time are logged to Blob 
    // * GooglyIndicator polls this via GetReading
    public bool Idle { get; set; }
    public DateTime Time { get; set; }

    // An 8x8 representation of the current time:
    // 2*6 pixels represent hour; minutes as digits in a 3x5 pixel font.
    // Returned to GooglyIndicator when it polls for Idle
    public int[] TimeMatrix { get; set; }

    // An 8x8 representation of GooglyIndicator's battery level:
    // 3.3v becomes '3 3' with a janky 'v' below/between the digits
    // GooglyIndicator supplies GetReading with a raw ADC value
    // to transform into the on-screen representation
    public int[] BatteryMatrix { get; set; }
}