using SharpSCAD;
using GooglyEyes.Screen.Parts;

new Scene( "front" )
{
    new Front()
}.Save( "output", savePNG: true /* , saveSTL: true */ );
