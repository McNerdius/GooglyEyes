using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Parts;

public static class Shared
{
    public static ScadObject Screw( float length ) => new Union
    {
        cylinder(4,2.7, fn: 32).Translate(z:length-3.7),
        cylinder(length+0.1,1.7, fn: 32)
    };

    public static ScadObject Nut => new Cylinder( 2.8, 3.35, fn: 6 );
}