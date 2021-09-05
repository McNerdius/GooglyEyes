using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts;

class Screw : Module
{
    public override ScadObject Content => new Union
    {
        cylinder(5,2.6, fn: 16),
        cylinder(20,1.6, fn: 16).Translate(z:2.4)
    }.Rotate( x: -90 );
}