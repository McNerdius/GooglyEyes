using SharpSCAD;
using SharpSCAD.McSCAD;
using SharpSCAD.McSCAD.Electronics;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class Bottom : Module
{
    static ScadObject screw = new Screw();
    static ScadObject pin_header = cube( 2, 20, 4, center: true ).Color( "black" );
    static ScadObject battery = new RoundedCube( 16, 36, 22, 2, center: true ).Color( "royalblue" );

    static ScadObject d1_footprint( bool headers ) => new Union
    {
        new RoundedCube( 28, 38, 4, 2, center: true ).Color( "darkcyan" ),

        headers ? new Union
                      {
                          pin_header.Translate(x:-10),
                          pin_header.Translate(x:10)
                      }.Translate(y:5, z:3.9)
                : ScadObject.Empty

    }.Translate( z: 2 );

    static ScadObject led_matrix = new Union
    {
        d1_footprint(headers:false),
        cube(20,20,5, center: true).Translate(y: 5, z:5).Color("white")
    };

    static ScadObject shell = new Difference
    {
        new RoundedCube(52,2,center: true),
        cube(49,49,55,center:true).Translate(z:2.1),
        cube(53,center:true).Translate(z:25)
    }.Translate( z: 26 );

    public override ScadObject Content => new Union
    {
        shell.Color("gray"),

        battery.Translate(x: 15,  z:13),

        new Union
        {
            d1_footprint(true).Translate(z: 0), // d1 mini
            d1_footprint(true).Translate(z: 7),  // battery shield
            led_matrix.Translate(z: 14), // LED grid
        }.Translate(x:-9, z: 5)
    };
}
