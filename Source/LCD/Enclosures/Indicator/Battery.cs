using SharpSCAD;
using SharpSCAD.McSCAD;

class Battery : Module
{
    public override ScadObject Content =>
        new RoundedCube( 36, 14, 21, 2, center: true )
           .Translate( z: 21 / 2f ).Color( "royalblue" );
}


// 


// battery.Translate( x: 13.5, z: 4 ),

//         new Union
//         {
//            new D1_Footprint(),  // battery shield
//            new D1_Footprint().Translate(z: D1_Footprint.Height.Total), // d1 mini
//            new LED_Matrix_Shield().Translate(z:  D1_Footprint.Height.Total*2),
//         }.Translate( x: -7.5, z: 8 ),