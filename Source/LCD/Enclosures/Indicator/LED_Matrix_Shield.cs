using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace GooglyEyes.GridIndicator.Parts;

class LED_Matrix_Shield : Module
{
    public override ScadObject Content => new Union
    {
        new D1_Footprint { Headers  = false },
        cube(20.5,20.5,6, center: true).Translate(y: 0.5, z:5).Color("white")
    };
}
