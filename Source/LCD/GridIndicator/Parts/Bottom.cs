using SharpSCAD;
using SharpSCAD.McSCAD;
using SharpSCAD.McSCAD.Electronics;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Bottom : Module
{
    static ScadObject screw = new Screw();
    static ScadObject d1_footprint = new RoundedCube( 28, 38, 5, 3, center: true ).Color( "navy" );
    static ScadObject battery = new NineVolt_PP3().Color( "orange" );
    static ScadObject led_matrix = new Union
    {
        d1_footprint,
        cube(20,20,5, center: true).Translate(z:5).Color("white")
    };

    static ScadObject shell = new Difference
    {
        new RoundedCube(60,2,center: true),
        cube(57,57,55,center:true).Translate(z:2.1),
        cube(61,center:true).Translate(z:32)
    }.Translate( z: 30 );

    public override ScadObject Content => new Union
    {
        shell.Color("gray"),

        battery.Rotate(y: 90, x:90).Translate(x: 15, y:26, z:16),

        d1_footprint.Translate(x: -12, z:  6).Color("red"),  // power stuff
        d1_footprint.Translate(x: -12, z: 16), // d1 mini
        led_matrix.Translate(x: -12,   z: 25), // LED grid
    };
}
