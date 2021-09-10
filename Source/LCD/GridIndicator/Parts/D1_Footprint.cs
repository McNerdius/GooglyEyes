using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class D1_Footprint : Module
{
    public bool Headers = true;

    public static (float Board, float Header, float Total) Height = (4, 9.5f, 13.5f);

    private static ScadObject pin_header
        = cube( 2.5, 21, Height.Header, center: true ).Color( "black" );

    public override ScadObject Content => new Union
    {
        new Cube( 26, 35, Height.Board, center: true ).Color( "darkcyan" ),

        Headers ? new Union
                      {
                          pin_header.Translate(x:-10),
                          pin_header.Translate(x:10)
                      }.Translate(y:1, z:(Height.Total)/2f-0.1)
                : ScadObject.Empty

    }.Translate( z: 2 );
}
