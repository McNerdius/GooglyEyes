using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class ButtonSandwich : Module
{
    public static int Width = 47;
    public static int Depth = 7;
    public static int Height = 16;

    public override ScadObject Content
    {
        get
        {
            var body = new RoundedCube( Depth, Width, Height, 1, center: true )
            {
                Rounded = new RoundedCube.Rounding( Front: false )
            }.Translate( x: -Depth / 2f, z: Height / 2f );

            var wireCutouts = new Union
            {
                new Button().Translate( x: 0.1, z: 8 ),

                cylinder(Depth+2,2.4,center:true,fn:24)
                    .Rotate(y:90).Translate(x: -Depth / 2f,y:8+3.5,z:ButtonSandwich.Height - 3.5),

                cylinder(Depth+2,2.4,center:true,fn:24)
                    .Rotate(y:90).Translate(x: -Depth / 2f,y:-8-3.5,z:ButtonSandwich.Height - 3.5)
            };

            return new Difference( body )
            {
                wireCutouts,
                new Union
                {
                    Shell.Screw,
                    Shell.Screw.Mirror(y:true),
                }.Translate(x:-Shell.Size.XY/2f+1)
            };
        }
    }
}
