using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class TftModule : Module
{
    public static int Width => 72;
    public static int Height => 45;
    public static int Depth => 24;

    public static (int Width, float Thickness) Glass
        => (62, 3f + 2);

    public static (float X, float Z) ScrewOffsets = (33, 18.5f);

    public static double BoardThickness = 1.5;

    private static ScadObject board
        => new Cube( Width, 1.5, Height, center: true )
            .Translate( y: BoardThickness / 2f );

    private static ScadObject glass => cube( Glass.Width, Glass.Thickness + 0.1, Height, center: true )
        .Translate( y: -(Glass.Thickness / 2f) + 0.1 );

    private static ScadObject guts
        => cube( Width, Depth, Height, center: true )
            .Translate( y: Depth / 2f + BoardThickness - 0.1 );

    private static ScadObject screw
        => GooglyEyes.Parts.Shared.Screw( 10 )
            .Translate( z: -10 )
            .Rotate( x: 90 )
            .Translate( x: ScrewOffsets.X, y: -2.5, z: ScrewOffsets.Z );

    public static ScadObject Screws => new Union
    {
        screw,
        screw.Mirror(x:true),
        screw.Mirror(z:true),
        screw.Mirror(x:true).Mirror(z:true)
    }.Translate( y: -BoardThickness - 1 );

    private static ScadObject slot
        => GooglyEyes.Parts.Shared.StandoffSlot
            .Translate( x: ScrewOffsets.X, y: -2 - Glass.Thickness + 0.1, z: ScrewOffsets.Z );

    public static ScadObject StandoffSlots => new Union
    {
        slot,
        slot.Mirror(x:true),
        slot.Mirror(z:true),
        slot.Mirror(x:true).Mirror(z:true)
    }.Translate( y: Front.Depth );

    public override ScadObject Content => new Union
    {
        glass.Color("gray"),
        board.Color("green"),
        guts.Color("white")
    };
}
