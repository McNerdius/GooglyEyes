using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

public class Lid : Module
{
    static int Size => Shell.Size.XY;

    static ScadObject screw => Shell.Screw().Translate( z: 3 );

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new RoundedCube(Size-2.75,Size-2.75,3,1.5,center: true)
            {
                Rounded = new RoundedCube.Rounding { Top = false }
            }.Translate(z:-1.5),
            new RoundedCube(Size-0.2,Size-0.2,2.5,1,center: true)
            {
                Rounded = new RoundedCube.Rounding { Bottom = false }
            }.Translate(z:1.25),

        }.Translate(z:Shell.Size.Z),

        new LED_Matrix_Shield().Rotate(z:90).Translate(x:-10,z:Shell.Size.Z-4),

        screw,
        screw.Mirror(x:true),
        screw.Mirror(y:true),
        screw.Mirror(x:true).Mirror(y:true),
    };
}