using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Front : Module
{
    public static ScadObject Screen = new TftModule();

    public static int Width => 76;
    public static int Depth => 12;
    public static int Height => 48;

    public override ScadObject Content => new Difference
    {
        new RoundedCube(Width,Depth,Height, 1, center: true)
        {
            Rounded = new RoundedCube.Rounding { Right = false}
        }.Translate(y:(Depth/2f)-TftModule.Glass.Thickness+0.1),

        Screen,
        TftModule.Screws
    };
}
