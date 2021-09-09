namespace GooglyEyes;

public class LIS3DH
{
    // 🤔
    public const float GRAVITY = 9.807f;
    public float Gravity => -GRAVITY;

    public LIS3DH( FullScale scale, double maxGforce )
        => (Scale, MaxGforce) = (scale, maxGforce);

    public FullScale Scale { get; init; } = FullScale.Range8G;
    public double Divider => (double) Scale;

    public double MaxGforce { get; init; } = 2;

    public float RandomReading() => scale( random() );

    short random() => unchecked(fuzz( (short) (MaxGforce * Divider) ));
    float scale( double value ) => (float) (value / Divider * GRAVITY);

    private static Random fuzzGen = new();
    private static short fuzz( short max )
        => (short) fuzzGen!.Next( -max, max );

    public enum FullScale
    {
        Range2G = 16380,
        Range4G = 8190,
        Range8G = 4096,
        Range16G = 1365
    }
}
