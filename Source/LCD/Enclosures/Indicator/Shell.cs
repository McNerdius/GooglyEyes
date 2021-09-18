using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Shell : Module
{
    public static (int XY, int Z) Size = (50, 38);
    public static float Thickness = 2.5f;
    public static float Radius = 2.5f;

    public static ScadObject Screw( float scale = 1 )
        => GooglyEyes.Parts.Shared.Screw( Size.Z ).Scale( x: scale, y: scale ).Translate( Size.XY / 2f - 5.5, Size.XY / 2f - 5.5, z: -0.1 );

    public static ScadObject Nut =
        GooglyEyes.Parts.Shared.Nut.Rotate( z: 30 )
           .Translate( x: (Size.XY / 2f) - 5.5, y: (Size.XY / 2f) - 5.5, z: -0.1 );

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new Difference
            {   // outermost bits
                new RoundedCube(Size.XY,Size.XY,Size.Z+Radius,Radius,center: true),

                cube(Size.XY-Thickness,Size.XY-Thickness,Size.Z,center:true)
                    .Translate(z:Thickness/2+0.1),

                cube(60,center:true).Translate(z:30+(Size.Z-Radius)/2f),

            }.Translate(z: (Size.Z+Radius)/2f),

            new Difference
            {   // thicker corners for screws/nuts
                cube(Size.XY-Thickness,Size.XY-Thickness,3,center:true)
                    .Translate(z:1.4f+Thickness),

                // accessibility for battery plug
                cube(Size.XY,Size.XY-20,3.1,center:true)
                    .Except(cube(20,Size.XY,3.1,center: true).Translate(y:22))
                    .Translate(z:1.4f+Thickness),
            },

            cube(32,2.25,4.5,center:true).Translate(y:Size.XY/2-1.9,z:29),
        },

        Nut,
        Nut.Mirror(x:true),
        Nut.Mirror(y:true),
        Nut.Mirror(x:true).Mirror(y:true),

        Screw(),
        Screw().Mirror(x:true),
        Screw().Mirror(y:true),
        Screw().Mirror(x:true).Mirror(y:true),

        Button.Base.Translate(y:(Size.XY-Thickness)/2f,z:29),
        Button.Stem.Translate(y:(Size.XY-Thickness)/2f-0.1f,z:29),

        new RoundedCube(Size.XY,10,5,2.5, center:true).Translate(y:-5,x:Size.XY/2f,z:9)

    }.Color( "gray" );
}