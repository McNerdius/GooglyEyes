using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class TftModule : Module
{
    public static int Width => 72;
    public static int Height => 44;

    public static (int Width, int Thickness) Glass
        => (60, 4);

    public static double BoardThickness = 1.5;

    public static ScadObject board => new Cube( Width, 1.5, Height, center: true );

    public static ScadObject glass => new RoundedCube( Glass.Width, Glass.Thickness, Height, 1, center: true )
    {
        Rounded = new RoundedCube.Rounding { Right = false }
    };

    public static ScadObject guts => new RoundedCube( Width, 14, Height, 2, center: true )
    {
        Rounded = new RoundedCube.Rounding { Left = false }
    };

    public override ScadObject Content => new Union
    {
        glass.Translate(y:-(Glass.Thickness/2f)),
        board.Translate(y:BoardThickness/2f-0.1),
        guts.Translate(y:6.9)
    };
}
