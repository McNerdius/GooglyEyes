using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Rear : Module
{
    public static TftModule Screen = new TftModule();

    public static int Width => Front.Width;
    public static int Height => Front.Height;
    public static int Depth => 12;

    public override ScadObject Content => new Union
    {
        new Difference
        {
            new RoundedCube(Width,Depth,Height, 1, center: true)
            {
                Rounded = new RoundedCube.Rounding { Left = false}
            }.Translate(y: Depth/2 + Front.Depth-TftModule.Glass.Thickness),

            Screen,

            TftModule.Screws,

            new HexGrid
            {
                Spacing = 1.5,
                HexSize = (7, 20),
                Size = (4,  3)
            }.Rotate(x:90).Translate(x:-22,y:20,z:-12)

        },//.Translate( z: 10 ),

        TftModule.StandoffSlots.Translate(y:6)
    };
}
