using Spectre.Console;

using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Formats.Png;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Drawing.Processing;

using GooglyEyes;
using static GooglyEyes.GooglyMath;

var left = new GooglyEye( 64, 32 );
var right = new GooglyEye( 64, 32 );

var img = new Image<Rgba32>( 256, 128 );
var imgStream = new MemoryStream();
img.Save( imgStream, new PngEncoder() );
imgStream.Seek( 0, SeekOrigin.Begin );
var canvasImage = new CanvasImage( imgStream ).MaxWidth( 32 );

var firstReading = true;
var continuousMotion = true;

var t = DateTime.Now;

while ( true )
{
    canvasImage.Draw( left, clear: true );
    canvasImage.Draw( right, x_offset: 128 );

    AnsiConsole.Clear();
    AnsiConsole.Render( canvasImage );

    var elapsed = (float) (DateTime.Now - t).TotalSeconds;
    var scale = elapsed * TIME_SCALE;

    if ( firstReading )
    {
        left.PupilVelocity = ReadAccelerometer();
        right.PupilVelocity = ReadAccelerometer();
    }

    var (aX, aY) = ReadAccelerometer();
    (aX, aY) = (aX * scale, (aY - GRAVITY) * scale);

    firstReading = false;

    left.Move( aX, aY );
    right.Move( aX, aY );

    Thread.Sleep( 10 );
}

(float aX, float aY) ReadAccelerometer()
=> (firstReading, continuousMotion) switch
{
    (true, _ ) => (Fuzz( 2 ), Fuzz( 2 )),
    (false, true ) => (Fuzz( 0.75f ), 0f),
    (false, false ) => (0f, 0f)
};
