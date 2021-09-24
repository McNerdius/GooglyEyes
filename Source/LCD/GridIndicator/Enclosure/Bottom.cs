using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Bottom : Module
{
    public static (int X, int Y, float Z) Size = (40, 42, 36.5f);
    public static float Thickness = 3f;
    public static float Radius = 2.5f;

    public static ScadObject Screw( float scale = 1 )
        => GooglyEyes.Parts.Shared.Screw( Size.Z ).Scale( x: scale, y: scale ).Translate( Size.X / 2f - 5.5, Size.Y / 2f - 5.5, z: -0.1 );

    public static ScadObject Nut =
        GooglyEyes.Parts.Shared.Nut.Rotate( z: 30 )
           .Translate( x: (Size.X / 2f) - 5.5, y: (Size.Y / 2f) - 5.5, z: -0.1 );

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new Difference
            {   // outermost bits
                new RoundedCube(Size.X+Thickness,Size.Y+Thickness,Size.Z+Radius,Radius,center: true),

                cube(Size.X,Size.Y,Size.Z,center:true)
                    .Translate(z:Thickness/2+0.1),

                cube(60,center:true).Translate(z:30+(Size.Z-Radius)/2f),

            }.Translate(z: (Size.Z+Radius)/2f),

            new Difference
            {   // push D1 up, LED matrix display thru the lid
                cube(Size.X,28,4,center:true),

                cube(Size.X+0.1,16,4.1,center:true)

            }.Translate(y:-7, z:1.9f+Thickness)
        },

        GooglyEyes.Parts.Shared.Screw( Bottom.Size.X+Bottom.Thickness )
            .Rotate( y: 90 )
            .Translate( x: -(Bottom.Size.X+Bottom.Thickness)/2f,y:13.6, z: Bottom.Size.Z-5.7-1.25 ),

        GooglyEyes.Parts.Shared.Nut
            .Rotate( y: 90 )
            .Translate( x: -(Bottom.Size.X+Bottom.Thickness)/2f,y:13.6, z: Bottom.Size.Z-5.7-1.25 ),

        // new RoundedCube(Size.X,10,5,2.5, center:true).Translate(y:-2,x:Size.Y/2f,z:11.5),
        new RoundedCube(Size.X,12,8,1, center:true).Translate(y:-1.5,x:Size.Y/2f,z:11.5)

    }.Color( "white" );
}