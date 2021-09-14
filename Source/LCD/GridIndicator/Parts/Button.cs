using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Button : Module
{
    public static double BaseDepth = 4.5;
    public static double StemDepth = 4;

    public static ScadObject Connectors => cube( 2.8, 32, 7, center: true ).Translate( x: -1.4 );
    public static ScadObject Base => cylinder( BaseDepth, 7.1, fn: 24 ).Rotate( y: -90 );
    public static ScadObject Stem => cylinder( StemDepth, 4.1, fn: 24 ).Rotate( y: 90 );

    public override ScadObject Content => new Union
    {
        Connectors,
        Base,
        Stem
    };
}
