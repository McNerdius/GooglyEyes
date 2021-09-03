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

var first = true;
var t = DateTime.Now;

while ( true )
{
    canvasImage.Draw( left, clear: true );
    canvasImage.Draw( right, x: 128 );

    AnsiConsole.Clear();
    AnsiConsole.Render( canvasImage );

    var elapsed = (int) (DateTime.Now - t).TotalMilliseconds;
    var scale = elapsed * TIME_SCALE;

    #region "read" the "accelerometer"... 

    // simulate random X-axis jerks as would be seen on a 3D printer:
    var (aX, aY) = (Fuzz(), 0f);

    //  - OR -

    // an initial boost in a random direction, then let it settle
    // var (aX, aY) = first ? (Fuzz( 4 ), Fuzz( 4 )) : (0f, 0f);
    // first = false;

    #endregion

    aX *= scale;
    aY *= scale;

    left = left.Move( (aX, aY), DRAG );
    right = right.Move( (aX, aY), DRAG );

    Thread.Sleep( 10 );
}