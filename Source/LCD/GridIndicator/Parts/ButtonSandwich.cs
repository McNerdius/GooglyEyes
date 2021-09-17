using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class ButtonSandwich : Module
{
    public static int Width = 47;
    public static int Depth = 7;
    public static int Height = 12;

    public override ScadObject Content
    {
        get
        {
            var body = new RoundedCube( Width, Depth, Height, 1, center: true )
            {
                Rounded = new RoundedCube.Rounding( Right: false )
            }.Translate( y: -Depth / 2f, z: Height / 2f );

            var wireCutouts = new Union
            {
                new Button().Translate(y: 0.1, z: Height/2f),

                cylinder(Depth+2,2.4,center:true,fn:24)
                    .Rotate(x:90).Translate(y: -Depth / 2f,x:12,z:Height - 3.5),

                cylinder(Depth+2,2.4,center:true,fn:24)
                    .Rotate(x:90).Translate(y: -Depth / 2f,x:-12,z:Height - 3.5)
            };

            return new Difference( body )
            {
                wireCutouts,
                new Union
                {
                    Shell.Screw,
                    Shell.Screw.Mirror(x:true),
                }.Translate(y:-Shell.Size.XY/2f+1)
            };
        }
    }
}
