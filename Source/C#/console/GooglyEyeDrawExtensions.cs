using Spectre.Console;

using SixLabors.ImageSharp.Drawing;
using SixLabors.ImageSharp.Drawing.Processing;
using SixLabors.ImageSharp.Processing;

using ImageSharpColor = SixLabors.ImageSharp.Color;

namespace GooglyEyes;

public static class GooglyEyeDrawExtensions
{
    public static void Draw( this CanvasImage image, GooglyEye eye, int x_offset = 0, bool clear = false )
    => image.Mutate( i =>
    {
        if ( clear )
            i.Fill( ImageSharpColor.Black );
        i.Fill( ImageSharpColor.White, new EllipsePolygon( eye.Radius + x_offset, eye.Radius, eye.Radius ) );
        i.Fill( ImageSharpColor.Black, new EllipsePolygon( eye.PupilPosition.X + eye.Radius + x_offset, eye.Radius - eye.PupilPosition.Y, eye.PupilRadius ) );
    } );
}