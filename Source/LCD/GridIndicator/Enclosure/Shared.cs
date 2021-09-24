using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Parts;

public static class Shared
{
    public static ScadObject Screw( float length ) => new Union
    {
        cylinder(4,3.2, fn: 32).Translate(z:length-3.7),
        cylinder(length+0.1,2, fn: 32)
    };

    public static ScadObject Nut => new Cylinder( 3, 3.5, fn: 6 );
}