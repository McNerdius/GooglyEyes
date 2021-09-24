using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

public class Lid : Module
{
    static ScadObject screw => Bottom.Screw().Translate( z: 3 );

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new RoundedCube(Bottom.Size.X+Bottom.Thickness-0.2,Bottom.Size.Y+Bottom.Thickness-0.2,2,1,center: true)
            {   // top
                Rounded = new RoundedCube.Rounding { Bottom = false }
            }.Translate(z:1),

            cube(4.25,12.25,12,center:true)
                .Translate(x:(Bottom.Size.X-5)/2f, y:13.6,z:-6),

            cube(4.25,12.25,12,center:true)
                .Translate(x:-(Bottom.Size.X-5)/2f, y:13.6,z:-6),

        }.Translate(z:Bottom.Size.Z),

        GooglyEyes.Parts.Shared.Screw( Bottom.Size.X+Bottom.Thickness )
            .Rotate( y: 90 )
            .Translate( x: -(Bottom.Size.X+Bottom.Thickness)/2f,y:13.6, z: Bottom.Size.Z-5.7-1.25 ),
        GooglyEyes.Parts.Shared.Nut
            .Rotate( y: 90 )
            .Translate( x: -(Bottom.Size.X+Bottom.Thickness)/2f,y:13.6, z: Bottom.Size.Z-5.7-1.25 ),

        new Button().Translate( y:13.6, z: Bottom.Size.Z - 0.1 ),

        new LED_Matrix_Shield().Translate(y: -(Bottom.Size.Y-25.9)/2f, z:Bottom.Size.Z-4),
    }.Color( "white" );
}