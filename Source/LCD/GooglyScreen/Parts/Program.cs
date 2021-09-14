using SharpSCAD;
using GooglyEyes.Screen.Parts;

new Scene( "front" )
{
    new Front()
}.Save( "output", savePNG: true, saveSTL: true );

new Scene( "module" )
{
    new TftModule()
}.Save( "output", savePNG: true );

new Scene( "rear" )
{
    new Rear()
}.Save( "output", savePNG: true, saveSTL: true );
