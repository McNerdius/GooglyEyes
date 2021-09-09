using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Screw : Module
{
    public override ScadObject Content => new Union
    {
        cylinder(3.5,2.6, fn: 32),
        cylinder(40,1.6, fn: 32)
    }.Rotate( x: -90 ).Translate( y: -3.5 );
}