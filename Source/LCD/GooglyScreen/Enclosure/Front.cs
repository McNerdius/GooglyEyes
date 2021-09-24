using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Front : Module
{
    public static ScadObject Screen = new TftModule();

    public static int Width => 76;
    public static int Depth => 25 + 2;
    public static int Height => 47;

    // public static (int x, int y, int z) CornerSize => (5, 8, 8);

    public override ScadObject Content => new Difference
    {
        new Union
        {
            new Difference
            {
                new RoundedCube(Width,Depth,Height, 1.25, center: true)
                {
                    Rounded = new RoundedCube.Rounding { Right = false}
                }.Translate(y:(Depth/2f)-TftModule.Glass.Thickness+0.1),

                Screen,
                Button.Cutout.Scale(1.001).Translate(x:Width/2f+0.1,y:Depth-4.8),
            },

            Button.AddBack.Translate(x:Width/2f,y:Depth-4.9),

            square(TftModule.Glass.Width+0.1,TftModule.Height+0.1,center:true)
                .Except(new RoundedSquare(TftModule.Glass.Width-12,TftModule.Height-5,8).Translate(x:-2 ))
                .LinearExtrude(2.1)
                .Rotate(x:90)
                .Translate(y:-TftModule.Glass.Thickness+2.2)
        },
        TftModule.Screws,
    };
}
