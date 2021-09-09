using Spectre.Console;

using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Formats.Png;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Drawing.Processing;

using GooglyEyes;
using static GooglyEyes.GooglyMath;

var lis3dh = new LIS3DH( LIS3DH.FullScale.Range8G, maxGforce: 3f );

var left = new GooglyEye( 64, 32 )
{
    PupilVelocity = (lis3dh.RandomReading(), lis3dh.RandomReading())
};

var right = new GooglyEye( 64, 32 )
{
    PupilVelocity = (lis3dh.RandomReading(), lis3dh.RandomReading())
};

var img = new Image<Rgba32>( 256, 128 );
var imgStream = new MemoryStream();
img.Save( imgStream, new PngEncoder() );
imgStream.Seek( 0, SeekOrigin.Begin );
var canvasImage = new CanvasImage( imgStream ).MaxWidth( 32 );

var firstReading = true;
var continuousMotion = true;

var t = DateTime.Now;

(int skip, int current) frames = (10, 0);

while ( true )
{
    canvasImage.DrawEye( left, clear: true );
    canvasImage.DrawEye( right, x_offset: 128 );

    AnsiConsole.Clear();
    AnsiConsole.Render( canvasImage );

    var elapsed = (float) (DateTime.Now - t).TotalSeconds;
    t = DateTime.Now;
    var scale = elapsed * G_Scale;

    if ( frames.skip == ++frames.current )
    {
        frames.current = 0;
        left.Move( 0, lis3dh.Gravity * scale );
        right.Move( 0, lis3dh.Gravity * scale );
    }
    else
    {
        var (aX, aY) = ReadAccelerometer();
        left.Move( aX * scale, aY * scale );

        (aX, aY) = ReadAccelerometer();
        right.Move( aX * scale, aY * scale );
    }

    firstReading = false;
    Thread.Sleep( 10 );
}

(float aX, float aY) ReadAccelerometer()
=> (firstReading, continuousMotion) switch
{
    (true, _ ) => (lis3dh.RandomReading(), lis3dh.RandomReading()),
    (false, true ) => (lis3dh.RandomReading(), lis3dh.Gravity),
    (false, false ) => (0, lis3dh.Gravity)
};
