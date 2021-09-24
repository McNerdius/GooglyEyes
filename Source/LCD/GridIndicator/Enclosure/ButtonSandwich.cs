using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class ButtonSandwich : Module
{
    public static int Width = 30;
    public static int Depth = 12;
    public static int Height = 10;

    public override ScadObject Content =>
        new Difference
        {
            cube( Width, Depth, Height, center: true )
                .Translate( z: Height / 2f ),
            new Button().Translate(z: Height+1.1),

            cube(8).Translate(x:9, y: 1.1, z:Height-4).Mirror(y:true),
            cube(8).Translate(x:-17, y: 1.1, z:Height-4).Mirror(y:true),

            GooglyEyes.Parts.Shared.Screw( 60 )
                            .Rotate( y: 90 )
                            .Translate( x: -30, z: 3 )

        }.Translate( y: 13.6, z: Bottom.Size.Z - Height ).Color( "white" );



    // var wireCutouts = new Union
    // {

    //     cylinder(Depth+2,2.4,center:true,fn:24)
    //         .Rotate(x:90).Translate(y: -Depth / 2f,x:12,z:Height - 3.5),

    //     cylinder(Depth+2,2.4,center:true,fn:24)
    //         .Rotate(x:90).Translate(y: -Depth / 2f,x:-12,z:Height - 3.5)
    // };


    // wireCutouts,
    // new Union
    // {
    //     Bottom.Screw(scale:1.05f),
    //     Bottom.Screw(scale:1.05f).Mirror(x:true),
    // }.Translate(y:-Bottom.Size.Y/2f+1.25)
}
