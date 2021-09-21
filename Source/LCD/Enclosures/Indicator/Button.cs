using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Button : Module
{
    public static ScadObject Connectors
        => cube( 31, 6, 3, center: true ).Translate( z: -1.5 );

    public static ScadObject Base
        => cylinder( height: 5, radius: 7.5, fn: 64 ).Rotate( x: 180 );

    public static ScadObject Stem
        => cylinder( height: 5, radius: 4.5, fn: 64 );

    public override ScadObject Content => new Union
    {
        Connectors,
        Base,
        Stem
    }.Color( "yellow" );
}
