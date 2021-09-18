using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Button : Module
{
    public static double BaseDepth = 4.5;
    public static double StemDepth = 4;

    public static ScadObject Connectors => cube( 32, 4, 7, center: true ).Translate( y: -1.9 );
    public static ScadObject Base => cylinder( BaseDepth, 7.4, fn: 24 ).Rotate( x: 90 );
    public static ScadObject Stem => cylinder( StemDepth, 4.3, fn: 24 ).Rotate( x: -90 );

    public override ScadObject Content => new Union
    {
        Connectors,
        Base,
        Stem
    };
}
