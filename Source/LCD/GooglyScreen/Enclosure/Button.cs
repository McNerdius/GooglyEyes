using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

public class Button : Module
{
    public static (float X, float YZ) BaseSize = (4.75f, 12.5f);
    public static (float X, float YZ, float Clearance) StemSize = (4, 8, 1.0f);

    public override ScadObject Content => new Union
    {
        // main bits
        cube(BaseSize.X,BaseSize.YZ,BaseSize.YZ,center:true),
        // stem 
        cube(StemSize.X,StemSize.YZ,StemSize.YZ,center:true).Translate(x:(BaseSize.X+StemSize.X)/2f-0.1),
        // wiring connectors
        cube(6,BaseSize.YZ,4,center:true).Translate(x:-2.5,z:BaseSize.YZ/2),
        cube(6,BaseSize.YZ,4,center:true).Translate(x:-2.5,z:-BaseSize.YZ/2),
    }.Translate( x: -BaseSize.X / 2 - StemSize.Clearance );

    public static ScadObject Cutout => cube( BaseSize.X + 3, (BaseSize.YZ + 4) / 2f, BaseSize.YZ + 6, center: true )
    .Translate( x: -(BaseSize.X + 3) / 2f, y: -(BaseSize.YZ + 4) / 4f );

    public static ScadObject AddBack => Cutout.Except( new Button() );
}