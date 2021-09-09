using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Front : Module
{
    public static ScadObject Screw = new Screw();
    public static ScadObject Screen = new TftModule();

    public override ScadObject Content => new Difference
    {
        new RoundedCube(76,12,48, 1, center: true)
        {
            Rounded = new RoundedCube.Rounding { Right = false}
        }.Translate(y:2.1),

        Screen,

        new Union
        {
            Screw.Translate(x:33, z:18.75),
            Screw.Translate(x:-33, z:18.75),
            Screw.Translate(x:33, z:-18.75),
            Screw.Translate(x:-33, z:-18.75)
        }.Translate(y:-1)

    };
}
