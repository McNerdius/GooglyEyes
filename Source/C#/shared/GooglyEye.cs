using static System.MathF;

namespace GooglyEyes;
using static GooglyMath;

public record GooglyEye( float Radius, float PupilRadius )
{
    public float InnerRadius = Radius - PupilRadius;
    public float R2 = Pow( Radius - PupilRadius, 2 );

    public float PupilDiameter = PupilRadius * 2;

    public (float X, float Y) PupilPosition { get; set; } = (0, 0);
    public (float X, float Y) PupilVelocity { get; set; } = (0, 0);

    // 👍 https://github.com/adafruit/Adafruit_Learning_System_Guides/blob/main/Hallowing_Googly_Eye/Hallowing_Googly_Eye.ino 
    public void Move( float aX, float aY )
    {
        var (x, y) = this.PupilPosition;
        var (vX_new, vY_new) = capVelocity( aX, aY );
        var (x_new, y_new) = (x + vX_new, y + vY_new);

        float originDistance = SumOfSquares( x_new, y_new );

        if ( originDistance >= R2 )
        {
            float dx = x_new - x;
            float dy = y_new - y;

            float x2 = Pow( x, 2 ),
                y2 = Pow( y, 2 ),
                a2 = Pow( dx, 2 ),
                b2 = Pow( dy, 2 ),
                a2b2 = a2 + b2,
                n1, n2,
                n = a2 * R2 + b2 * R2 + 2f * dx * dy * x * y - a2 * y2 - b2 * x2;

            if ( (n >= 0f) && (a2b2 > 0f) )
            {
                n = Sqrt( n );
                n1 = (n - dx * x - dy * y) / a2b2;
                n2 = -(n + dx * x + dy * y) / a2b2;
            }
            else
            {
                n1 = n2 = 0f; // Avoid divide-by-zero
            }
            // ...and use the 'larger' one (may be -0.0, that's OK!)
            if ( n2 > n1 )
                n1 = n2;

            float ix = x + dx * n1, // Single intersection point of
                iy = y + dy * n1;   // movement vector and circle.

            float mag1 = Pythagorean( dx, dy ),
                   dx1 = ix - x,
                   dy1 = iy - y,
                   mag2 = Pythagorean( dx1, dy1 );

            float mag3 = (mag1 - mag2) * ELASTICITY;

            float rx, ry;
            aX = -ix / InnerRadius;
            aY = -iy / InnerRadius;

            if ( mag1 > 0f )
            {
                rx = -dx / mag1;
                ry = -dy / mag1;
            }
            else
            {
                rx = ry = 0f;
            }

            float dot = rx * aX + ry * aY,
                  rpx = aX * dot, // Point to reflect across
                rpy = aY * dot;
            rx += (rpx - rx) * 2f; // Reflect velocity vector across point
            ry += (rpy - ry) * 2f; // (still normalized)

            // New position is the intersection point plus the reflected vector
            // scaled by mag3 (the elasticity-reduced velocity remainder).
            (x_new, y_new) = (ix + rx * mag3, iy + ry * mag3);

            // Velocity magnitude is scaled by the elasticity coefficient.
            mag1 *= ELASTICITY;
            this.PupilVelocity = (rx * mag1, ry * mag1);
        }

        this.PupilPosition = (x_new, y_new);
    }

    private (float X, float Y) capVelocity( float aX, float aY )
    {
        float vX = (PupilVelocity.X + aX) * DRAG;
        float vY = (PupilVelocity.Y + aY) * DRAG;

        float totalVelocity = SumOfSquares( vX, vY );
        if ( totalVelocity > Pow( InnerRadius, 2 ) )
        {
            totalVelocity = PupilDiameter / Sqrt( totalVelocity );
            (vX, vY) = (vX * totalVelocity, vY * totalVelocity);
        }

        return (vX, vY);
    }
}
