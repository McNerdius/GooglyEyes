// namespace GooglyEyes;

// record Pupil( int X, int Y, int R, int Offset )
// {
//     public static int Parallax = 0;

//     public (int X, int Y, double angle) GetPosition( double mouseX, double mouseY )
//     {
//         var d = (X: mouseX - X, Y: mouseY - Y);
//         var radians = Math.Atan2( d.X, d.Y );
//         var distance = Math.Sqrt( d.X * d.X + d.Y * d.Y );
//         distance = Math.Min( distance, Offset );

//         return ((int) (Math.Sin( radians ) * distance + X),
//                  (int) (Math.Cos( radians ) * distance + Y),
//                  distance);
//     }
// }
