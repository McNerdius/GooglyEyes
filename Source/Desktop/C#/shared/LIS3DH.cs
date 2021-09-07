namespace GooglyEyes;

using static GooglyMath;

public class LIS3DH
{
    public const float GRAVITY = 9.807f;

    public LIS3DH( FullScale scale, double maxGforce )
        => (Scale, MaxGforce) = (scale, maxGforce);

    public FullScale Scale { get; init; }
    public double Divider => (double) Scale;

    public short MaxFuzz { get; init; }
    public double MaxGforce { get; }

    public float Random() => scale( random() );
    public float Gravity => -GRAVITY;

    short random() => unchecked(Fuzz( (short) (MaxGforce * Divider) ));
    float scale( double value ) => (float) (value / Divider * GRAVITY);

    public enum FullScale
    {
        Range2G = 16380,
        Range4G = 8190,
        Range8G = 4096,
        Range16G = 1365
    }
}
