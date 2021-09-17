using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Shell : Module
{
    public static (int XY, int Z) Size = (50, 35);
    public static float Thickness = 2.5f;
    public static float Radius = 2.5f;

    public static ScadObject Screw => new Union
    {
        cylinder(3.8,2.7, fn: 32).Translate(z:Size.Z-3.7),
        cylinder(Size.Z+0.1,1.7, fn: 32)
    }.Translate( Size.XY / 2f - 5.5, Size.XY / 2f - 5.5, z: -0.1 );

    public static ScadObject Nut = new Cylinder( 2.7, 3.3, fn: 6 )
           .Rotate( z: 30 )
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

            cube(32,2.25,5.5,center:true).Translate(y:Size.XY/2-1.9,z:26),
        },

        Nut,
        Nut.Mirror(x:true),
        Nut.Mirror(y:true),
        Nut.Mirror(x:true).Mirror(y:true),

        Screw,
        Screw.Mirror(x:true),
        Screw.Mirror(y:true),
        Screw.Mirror(x:true).Mirror(y:true),

        Button.Base.Translate(y:(Size.XY-Thickness)/2f,z:26),
        Button.Stem.Translate(y:(Size.XY-Thickness)/2f-0.1f,z:26),

    }.Color( "gray" );
}