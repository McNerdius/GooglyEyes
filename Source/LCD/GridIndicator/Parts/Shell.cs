using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Shell : Module
{
    public static ScadObject Screw => new Union
    {
        cylinder(3.5,2.6, fn: 32).Translate(z:Size.Z-3.4),
        cylinder(Size.Z+0.1,1.6, fn: 32)
    }.Translate( Size.XY / 2f - 4.5, Size.XY / 2f - 4.5, z: -0.1 );

    public static (int XY, int Z) Size = (50, 43);

    public static ScadObject Nut = new Cylinder( 2.2, 3, fn: 6 )
           .Rotate( z: 30 )
           .Translate( x: (Size.XY / 2f) - 4.5, y: (Size.XY / 2f) - 4.5, z: -0.1 );

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new Difference
            {   // outermost bits
                new RoundedCube(Size.XY,Size.XY,Size.Z+4,2,center: true),
                cube(Size.XY-2,Size.XY-2,Size.Z,center:true).Translate(z:4),
                cube(60,center:true).Translate(z:60-(60-Size.Z)/2f-2),

            }.Translate( z: Size.Z/2f + 2 ),

            new Difference
            {   // groove for battery wiring
                cube(Size.XY-17,Size.XY-2,3,center:true).Translate(x:-1),

                cylinder(Size.XY,4,center:true,fn: 6)
                    .Rotate(x:90)
                    .Scale(x:2.5)
                    .Translate(z:2)
            }.Translate(x:-7, z: 4+1.5)
        },

        Nut,
        Nut.Mirror(x:true),
        Nut.Mirror(y:true),
        Nut.Mirror(x:true).Mirror(y:true),

        Screw,
        Screw.Mirror(x:true),
        Screw.Mirror(y:true),
        Screw.Mirror(x:true).Mirror(y:true)

    }.Color( "gray" );
}