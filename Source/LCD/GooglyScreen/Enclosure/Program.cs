using SharpSCAD;
using GooglyEyes.Screen.Parts;
using static GooglyEyes.Parts.Shared;

new Scene( "temp" )
{
    // new Difference
    // {
        // StandoffSlot.Rotate(x:90).Translate(z:3),
    //     Screw(6.1f).Translate(x:3.75,y:-3.75,z:-0.1)
    // },

    new Front()
    // new TftModule()
    // new Rear()
    // new Button()
    // Button.Cutout
    // Button.AddBack

}.Save( "output", savePNG: true, saveSTL: true );

// new Scene( "front" )
// {
//     new Front()
// }.Save( "output"/* , savePNG: true, saveSTL: true */ );

// new Scene( "module" )
// {
//     new TftModule()
// }.Save( "output", savePNG: true );

// new Scene( "rear" )
// {
//     new Rear()
// }.Save( "output", savePNG: true, saveSTL: true );
