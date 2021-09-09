
namespace GooglyEyes;

public static class BoundingRectangleExtensions
{
    public static Rect GetPupilRect( this GooglyEye eye )
        => new(
          eye.Radius + (int) eye.PupilPosition.X - eye.PupilRadius,
          eye.Radius + (int) eye.PupilPosition.X - eye.PupilRadius,
          eye.Radius + (int) eye.PupilPosition.Y + eye.PupilRadius + 1,
          eye.Radius + (int) eye.PupilPosition.Y + eye.PupilRadius + 1 );

    public static Rect GetBoundingRect( this GooglyEye eye, float x_old, float y_old )
    {
        int x1, y1, x2, y2;

        var (x_new, y_new) = eye.PupilPosition;

        if ( x_new >= x_old )
        {   // right
            x1 = (int) x_old - eye.PupilRadius;
            x2 = (int) x_new + eye.PupilRadius + 1;
        }
        else
        {   // left
            x1 = (int) x_new - eye.PupilRadius;
            x2 = (int) x_old + eye.PupilRadius;
        }
        if ( y_new >= y_old )
        {   // down
            y1 = (int) y_old - eye.PupilRadius;
            y2 = (int) y_new + eye.PupilRadius + 1;
        }
        else
        {   // up
            y1 = -(int) y_old - eye.PupilRadius;
            y2 = -(int) y_new + eye.PupilRadius;
        }

        return new( eye.Radius + x1, eye.Radius + y1, eye.Radius + x2, eye.Radius + y2 );
    }
}
