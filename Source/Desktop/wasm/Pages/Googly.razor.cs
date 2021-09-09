
using Excubo.Blazor.Canvas;

using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;

using static GooglyEyes.GooglyMath;

namespace GooglyEyes.Pages;

public partial class Googly : ComponentBase
{
    Canvas HelperCanvas { get; set; }

    LIS3DH lis3dh = new( LIS3DH.FullScale.Range8G, maxGforce: 3f );

    GooglyEye left = new( 80, 34 );
    GooglyEye right = new( 80, 40 );

    bool firstReading = true;
    bool continuousMotion = false;

    DateTime t = DateTime.Now;

    (int skip, int current) frames = (2, 0);

    private Timer timer;

    private async Task mouseUp( MouseEventArgs args )
    {
        if ( timer is null )
        {
            ax = (float) args.OffsetX / 320f;
            ay = (float) args.OffsetY / 240f;

            timer = new Timer( loop, null, 0, 200 );
        }
        else
        {
            timer.Dispose();
        }
    }

    private float ax, ay;
    bool firstFrame = true;

    async void loop( object? state )
    {
        await using var context = await HelperCanvas.GetContext2DAsync();
        {
            await context.DrawEye( left, 80, 120 );
            await context.DrawEye( right, 240, 120 );
        };

        var elapsed = (float) (DateTime.Now - t).TotalSeconds;
        t = DateTime.Now;
        var scale = elapsed * G_Scale;

        if ( frames.skip == ++frames.current )
        {
            frames.current = 0;
            left.Move( 0, lis3dh.Gravity * scale );
            right.Move( 0, lis3dh.Gravity * scale );
        }
        else
        {
            var (aX, aY) = ReadAccelerometer();
            left.Move( aX * scale, aY * scale );

            (aX, aY) = ReadAccelerometer();
            right.Move( aX * scale, aY * scale );
        }

        firstReading = false;
        StateHasChanged();
        Thread.Sleep( 50 );
    }

    (float aX, float aY) ReadAccelerometer()
    => (firstReading, continuousMotion) switch
    {
        (true, _ ) => (lis3dh.RandomReading(), lis3dh.RandomReading()),
        (false, true ) => (lis3dh.RandomReading(), lis3dh.Gravity),
        (false, false ) => (0, lis3dh.Gravity)
    };

    protected override async Task OnAfterRenderAsync( bool first_render )
    {
        if ( first_render )
        {
            GooglyMath.Drag = 0.9f;
            GooglyMath.Elasticity = 0.9f;
            GooglyMath.G_Scale = 10f;

            await using var context = await HelperCanvas.GetContext2DAsync();
            await context.FillStyleAsync( "orange" );
            await context.FillRectAsync( 0, 0, 320, 240 );

            await context.DrawEye( left, 80, 120 );
            await context.DrawEye( right, 240, 120 );
        }
    }
}