using static System.MathF;

namespace GooglyEyes;

public static class GooglyMath
{
    // play with these, keep them >0 and <1
    public static readonly float ELASTICITY = 0.7f;
    public static readonly float DRAG = 0.9f;

    // this will vary widely, depending on render speeds.
    // note this is ported from Arduino code for a 48mhz 
    // chip, and i hope to bring this code to .net nano
    // in the future, or i'd dump this scaling.
    // Faster chip or lower Thread.Sleep == lower scale
    public static readonly float G_SCALE = 20f;

    private static Random fuzzGen = new();

    public static short Fuzz( short max )
    => (short) (fuzzGen!.Next( max * 2 ) - max);

    public static float SumOfSquares( float a, float b ) => Pow( a, 2 ) + Pow( b, 2 );
    public static float Pythagorean( float a, float b ) => Sqrt( SumOfSquares( a, b ) );
}