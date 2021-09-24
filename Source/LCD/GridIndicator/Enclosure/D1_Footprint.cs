using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class D1_Footprint : Module
{
    public bool Headers = true;

    public static (float Board, float Header, float Total) Height = (3.6f, 9.5f, 13.1f);

    private static ScadObject pin_header
        = cube( 21, 2.5, Height.Header, center: true ).Color( "black" );

    public override ScadObject Content => new Union
    {
        new Cube( 36, 28, Height.Board, center: true ).Color( "darkcyan" ),

        Headers ? new Union
                      {
                          pin_header.Translate(y:-10),
                          pin_header.Translate(y:10)
                      }.Translate(z:(Height.Total)/2f-0.1)
                : ScadObject.Empty

    }.Translate( z: Height.Board / 2f );
}
