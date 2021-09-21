using static System.MathF;

namespace GooglyEyes;
using static GooglyMath;

public record GooglyEye( int Radius, int PupilRadius )
{
    public int Diameter = Radius * 2;
    public int PupilDiameter = PupilRadius * 2;

    public int InnerRadius = Radius - PupilRadius;
    public int R2 = (int) Pow( Radius - PupilRadius, 2 );

    public (float X, float Y) PupilPosition { get; set; } = (0, 0);
    public (float X, float Y) PupilVelocity { get; set; } = (0, 0);
    public float TotalVelocity => SumOfSquares( PupilVelocity.X, PupilVelocity.Y );
}