using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Rear : Module
{
    public static TftModule Screen = new TftModule();

    private static ScadObject corner
        => new Cylinder( 20, 15, fn: 4 )
                .Rotate( x: -90, y: 0 )
                .Translate( x: Width / 2f, y: TftModule.BoardThickness, z: Height / 2 );

    private static ScadObject nut
        => GooglyEyes.Parts.Shared.Nut.Translate(
                        x: TftModule.ScrewOffsets.X,
                        y: Depth / 2 + Front.Depth - TftModule.Glass.Thickness + 2.1,
                        z: TftModule.ScrewOffsets.Z );

    public static int Width => Front.Width;
    public static int Height => Front.Height;
    public static int Depth => 8;

    public override ScadObject Content => new Difference
    {
        new RoundedCube(Width,Depth,Height, 1, center: true)
        {
            Rounded = new RoundedCube.Rounding { Left = false}
        }.Translate(y: Depth/2 + Front.Depth-TftModule.Glass.Thickness),

        new Difference
        {
            Screen,

            corner,
            corner.Mirror(x:true),
            corner.Mirror(z:true),
            corner.Mirror(x:true).Mirror(z:true)
        },

        TftModule.Screws,

        nut,
        nut.Mirror(x:true),
        nut.Mirror(z:true),
        nut.Mirror(x:true).Mirror(z:true),

        new HexGrid
        {
            Spacing = 1.5,
            HexSize = (4.5, 20),
            Size = (6,   4)
        }.Rotate(x:90).Translate(x:-26,y:10,z:-12)

    }.Translate( z: 10 );
}
