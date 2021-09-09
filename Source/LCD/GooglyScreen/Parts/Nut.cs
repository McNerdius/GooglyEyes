using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Nut : Module
{
    public override ScadObject Content
        => new Cylinder( 2, 3, fn: 6 ).Rotate( x: -90 );
}