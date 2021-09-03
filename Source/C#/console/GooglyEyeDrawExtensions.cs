using Spectre.Console;

using SixLabors.ImageSharp.Drawing;
using SixLabors.ImageSharp.Drawing.Processing;
using SixLabors.ImageSharp.Processing;

using Color = SixLabors.ImageSharp.Color;

namespace GooglyEyes;

public static class GooglyEyeDrawExtensions
{
    public static void Draw( this CanvasImage image, GooglyEye eye, int x = 0, bool clear = false )
    => image.Mutate( i =>
    {
        if ( clear )
            i.Fill( Color.Black );
        i.Fill( Color.White, new EllipsePolygon( eye.Radius + x, eye.Radius, eye.Radius ) );
        i.Fill( Color.Black, new EllipsePolygon( eye.PupilPosition.X + eye.Radius + x, eye.Radius - eye.PupilPosition.Y, eye.PupilRadius ) );
    } );
}