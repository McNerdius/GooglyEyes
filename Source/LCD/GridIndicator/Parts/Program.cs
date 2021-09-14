using SharpSCAD;
using GooglyEyes.GridIndicator.Parts;

new Scene( "bottom" )
{
    new Shell()
}.Save( "output", savePNG: true, saveSTL: true );

// new Scene( "lid" )
// {
//     new Lid()
// }.Save( "output", savePNG: true, saveSTL: true );

// new Scene( "buttonsandwich" )
// {
//     new ButtonSandwich()//.Translate(x:24,z:24),
// }.Save( "output", savePNG: true, saveSTL: true );


// 


// battery.Translate( x: 13.5, z: 4 ),

//         new Union
//         {
//            new D1_Footprint(),  // battery shield
//            new D1_Footprint().Translate(z: D1_Footprint.Height.Total), // d1 mini
//            new LED_Matrix_Shield().Translate(z:  D1_Footprint.Height.Total*2),
//         }.Translate( x: -7.5, z: 8 ),