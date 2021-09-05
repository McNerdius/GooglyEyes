using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.Screen.Parts
{
    class Front : Module
    {
        static ScadObject screenCutout = new RoundedCube( 62, 3, 44, 1, center: true );
        static ScadObject moduleCutout = new RoundedCube( 72, 10, 44, 1, center: true );
        static ScadObject screw = new Union
        {
            cylinder(5,2.6, fn: 16),
            cylinder(20,1.6, fn: 16).Translate(z:2.4)
        }.Rotate( x: -90 );


        public override ScadObject Content => new Difference
        {
            new RoundedCube(76,10,48, 1, center: true),

            screw.Translate(x:33,y:-6,z:18.75),
            screw.Translate(x:-33,y:-6,z:18.75),
            screw.Translate(x:33,y:-6,z:-18.75),
            screw.Translate(x:-33,y:-6,z:-18.75),

            screenCutout.Translate( y:-4 ),
            moduleCutout.Translate( y: 2.25 )
        };
    }
}