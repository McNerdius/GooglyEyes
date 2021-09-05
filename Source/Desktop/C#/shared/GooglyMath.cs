using static System.MathF;

namespace GooglyEyes;

public static class GooglyMath
{
    // keep this positive: will be subtracted
    public static readonly float GRAVITY = 0.6f;

    // play with these, keep them >0 and <1
    public static readonly float ELASTICITY = 0.95f;
    public static readonly float DRAG = 0.996f;

    // this will vary widely, depending on render speeds.
    // note this is ported from Arduino code for a 48mhz 
    // chip, and i hope to bring this code to .net nano
    // in the future, or i'd dump this scaling.
    // Faster chip or lower Thread.Sleep == lower scale
    public static readonly float TIME_SCALE = 0.1f;

    private static Random fuzzGen = new();

    // NextSingle() rarely returns zero
    public static float Fuzz( float max = 1 )
    => fuzzGen!.NextSingle() * max * (fuzzGen.Next( 3 ) - 1);

    public static float SumOfSquares( float a, float b ) => Pow( a, 2 ) + Pow( b, 2 );
    public static float Pythagorean( float a, float b ) => Sqrt( SumOfSquares( a, b ) );
}
