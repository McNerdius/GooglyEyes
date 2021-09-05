using SharpSCAD;
using GooglyEyes.GridIndicator.Parts;

new Scene( "bottom" )
{
    new Bottom()
}.Save( "output", savePNG: true /* , saveSTL: true */ );
