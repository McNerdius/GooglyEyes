

using static System.MathF;

namespace GooglyEyes;

using Excubo.Blazor.Canvas;
using Excubo.Blazor.Canvas.Contexts;

using static GooglyMath;

public static class GooglyEyeDrawExtensions
{
    public static async Task DrawEye( this Context2D context, GooglyEye eye, int x_offset, int y_offset )
    {
        await circle( x_offset, y_offset, eye.Radius, "white" );
        await circle( x_offset + eye.PupilPosition.X, y_offset - eye.PupilPosition.Y, eye.PupilRadius, "black" );

        /* static */
        async Task circle( /* Context2D context, */ float x, float y, int r, string color )
        {
            await context.FillStyleAsync( color );
            await context.StrokeStyleAsync( color );

            await context.BeginPathAsync();
            await context.EllipseAsync( x, y, r, r, 0, 0, 360 );
            await context.StrokeAsync();

            await context.MoveToAsync( x, y );
            await context.FillAsync( FillRule.EvenOdd );
        }
    }

    // var c = circle( r );

    // foreach ( var _x in 0..(r * 2) )
    // {
    //     foreach ( var _y in 0..(r * 2) )
    //     {
    //         canvas.SetPixel( x + _x, y + _y, color( c[_x, _y] ) );
    //     }
    // }

    // public static void Draw( this Canvas canvas, GooglyEye eye, float old_x, float old_y, int x_offset = 0 )
    // {
    //     var (x1, y1, x2, y2) = eye.GetBoundingRect( old_x, old_y );
    //     var (px1, py1, px2, py2) = eye.GetPupilRect();

    //     var bg = Background( eye );
    //     var pupil = Pupil( eye );

    //     if ( x1 < 0 )
    //         x1 = 0;
    //     if ( y1 < 0 )
    //         y1 = 0;
    //     if ( x2 > eye.Diameter - 1 )
    //         x2 = eye.Diameter - 1;
    //     if ( y2 > eye.Diameter - 1 )
    //         y2 = eye.Diameter - 1;

    //     int row, col;

    //     // Process rows ABOVE pupil
    //     for ( row = y1; row < py1; row++ )
    //     {
    //         // srcPtr1 = (uint8_t*) &borderData[row][x1];
    //         for ( col = x1; col <= x2; col++ )
    //         {
    //             canvas.SetPixel( row, col, color( bg[row, col] ) );
    //         }
    //     }
    //     AnsiConsole.Render( canvas );
    //     // Process rows WITH pupil
    //     for ( ; row <= py2; row++ )
    //     {
    //         // srcPtr1 = (uint8_t*) &borderData[row][x1];     // Initial byte of eye border
    //         // srcPtr2 = (uint8_t*) &pupilData[row - py1][0]; // Initial byte of pupil
    //         for ( col = x1; col < px1; col++ )
    //         { // LEFT of pupil
    //             canvas.SetPixel( row, col, color( bg[row, col] ) );
    //         }
    //         for ( ; col <= px2; col++ )
    //         { // Overlap pupil
    //             var c = color( bg[row, col] || pupil[row - px1, col - py1] );
    //             canvas.SetPixel( row, col, c );
    //         }
    //         for ( ; col <= x2; col++ )
    //         { // RIGHT of pupil
    //             canvas.SetPixel( row, col, color( bg[row, col] ) );
    //         }
    //     }
    //     AnsiConsole.Render( canvas );

    //     // Process rows BELOW pupil
    //     for ( ; row <= y2; row++ )
    //     {
    //         // srcPtr1 = (uint8_t*) &borderData[row][x1];
    //         for ( col = x1; col <= x2; col++ )
    //         {
    //             canvas.SetPixel( row, col, color( bg[row, col] ) );
    //         }
    //     }

    //     AnsiConsole.Render( canvas );

    // }

    static bool[,] background;
    public static bool[,] Background( this GooglyEye eye )
        => background ??= circle( eye.Radius );

    static bool[,] pupil;
    public static bool[,] Pupil( this GooglyEye eye )
        => pupil ??= circle( eye.PupilRadius );

    private static string color( bool c ) => c ? "black" : "white";

    private static bool[,] circle( int r )
    {
        var d = r * 2;
        var c = new bool[d, d];

        foreach ( var x in 0..d )
        {
            foreach ( var y in 0..d )
            {
                c[x, y] = SumOfSquares( x, y ) > Pow( r, 2 );
            }
        }

        return c;
    }
}
