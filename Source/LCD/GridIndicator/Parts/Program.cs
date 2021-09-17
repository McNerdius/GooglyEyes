using SharpSCAD;
using GooglyEyes.GridIndicator.Parts;

new Scene( "bottom" )
{
    new Shell(),
    // Electrobits(),
    // new Battery().Translate( y: 13, z: Shell.Thickness + 3 ),
    // new ButtonSandwich().Translate(y:20,z:20),

}.Save( "output", savePNG: true, saveSTL: true );

new Scene( "lid" )
{
    new Lid()
}.Save( "output", savePNG: true, saveSTL: true );

new Scene( "buttonsandwich" )
{
    new ButtonSandwich()//.Translate(x:24,z:24),
}.Save( "output", savePNG: true, saveSTL: true );


// 



ScadObject Electrobits() => new Union
{
    new D1_Footprint(),  // battery shield
    new D1_Footprint().Translate(z: D1_Footprint.Height.Total), // d1 mini
    new LED_Matrix_Shield().Translate(z:  D1_Footprint.Height.Total*2),
}.Translate( y: -10.5, z: Shell.Thickness + 3 );
