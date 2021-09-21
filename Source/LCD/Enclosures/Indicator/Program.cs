using SharpSCAD;
using GooglyEyes.GridIndicator.Parts;
using Karmatach.Json;

var bottom = new Bottom();
var button = new Button().Translate( y: (Bottom.Size.Y - ButtonSandwich.Depth - Bottom.Thickness) / 2f, z: Bottom.Size.Z );
var sandwich = new ButtonSandwich();
var lid = new Lid();
var battery = new Battery().Translate( y: (Bottom.Size.Y - 14) / 2f, z: Bottom.Thickness );

new Scene( "assembled" )
{
    new Union
    {
        bottom,
        battery,
        sandwich,
        button,
        lid.Translate(z:25),

    }.Rotate(z:-45).Translate(x:-40),

    new Union
    {
        bottom,
        battery,
        sandwich,
        button,
        lid,

        Electrobits()

    }.Rotate(z:-80).Translate(y:90),

    new Union
    {
        battery,
        sandwich,
        button,

        Electrobits(),

    }.Rotate(z:-45).Translate(x:40)

}.Save( "output", savePNG: true );

new Scene( "bottom" )
{
    bottom,
}.Save( "output", savePNG: true, saveSTL: true );

new Scene( "lid" )
{
    lid
}.Save( "output", savePNG: true, saveSTL: true );

new Scene( "buttonsandwich" )
{
    sandwich
}.Save( "output", savePNG: true, saveSTL: true );

ScadObject Electrobits() => new Union
{
    new D1_Footprint(),  // battery shield
    new D1_Footprint().Translate(z: D1_Footprint.Height.Total), // d1 mini
    new LED_Matrix_Shield().Translate(z:  D1_Footprint.Height.Total*2),
}.Translate( y: -(Bottom.Size.Y - 28) / 2f, z: Bottom.Thickness + 4 );
