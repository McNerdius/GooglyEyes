using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Parts;

public static partial class Shared
{
    public static ScadObject Screw( float length ) => new Union
    {
        cylinder(3.5+0.1,2.2, fn: 32).Translate(z:length-3.5),
        cylinder(length-3.4,1.2, fn: 32)
    };

    public static ScadObject Standoff( float length ) =>
        cylinder( length, radius: 2.65, fn: 6, center: true );

    public static ScadObject Nut => Standoff( 3 );//new Cylinder( 3, 3.5, fn: 6 );

    public static ScadObject StandoffSlot => new Difference
    {
        new Union
        {
            cylinder(4,4,center:true,fn:32),
            cube(4,3.5,4,center:true).Translate(x:3,y:1)
            // cube(10,4,6,center:true).Translate(x:3)
        },
        Standoff(9)
    }.Rotate( x: 90, y: -45 );
}