
// using Excubo.Blazor.Canvas;

// using Microsoft.AspNetCore.Components;
// using Microsoft.AspNetCore.Components.Web;

// namespace googly.Pages;
// public partial class Follow : ComponentBase
// {
//     private Canvas helper_canvas;
//     private ElementReference normal_canvas;

//     private static (Pupil left, Pupil right) originals { get; } = (new( 80, 120, 42, 30 ), new( 240, 120, 42, 30 ));

//     private (Pupil left, Pupil right) draw = originals;

//     private async Task mouseMove( MouseEventArgs args )
//     {
//         var mouse = (x: args.OffsetX, y: args.OffsetY);

//         var leftPosition = originals.left.GetPosition( mouse.x, mouse.y );
//         var rightPosition = originals.right.GetPosition( mouse.x, mouse.y );

//         await using ( var context = await helper_canvas.GetContext2DAsync() )
//         {
//             await context.FillStyleAsync( "orange" );
//             await context.StrokeStyleAsync( "orange" );
//             await context.FillRectAsync( 0, 0, 320, 40 );

//             await context.StrokeStyleAsync( "black" );
//             await context.StrokeTextAsync( $"{args.OffsetX}, {args.OffsetY}", 140, 10 );
//         }

//         await drawPupil( "white", draw.left with { R = draw.left.R + 1 } );
//         draw.left = originals.left with { X = leftPosition.X, Y = leftPosition.Y };
//         await drawPupil( "black", draw.left );

//         await drawPupil( "white", draw.right with { R = draw.right.R + 1 } );
//         draw.right = originals.right with { X = rightPosition.X, Y = rightPosition.Y };
//         await drawPupil( "black", draw.right );
//     }

//     private async Task drawPupil( string color, Pupil eye )
//     {
//         await using var context = await helper_canvas.GetContext2DAsync();
//         await context.FillStyleAsync( color );
//         await context.StrokeStyleAsync( color );

//         await context.BeginPathAsync();
//         await context.EllipseAsync( eye.X, eye.Y, eye.R, eye.R, 0, 0, 360 );
//         await context.StrokeAsync();
//         await context.MoveToAsync( eye.X, eye.Y );
//         await context.FillAsync( FillRule.EvenOdd );
//     }

//     protected override async Task OnAfterRenderAsync( bool first_render )
//     {
//         if ( first_render )
//         {
//             await using var context = await helper_canvas.GetContext2DAsync();
//             await context.FillStyleAsync( "orange" );
//             await context.FillRectAsync( 0, 0, 320, 240 );

//             await context.FillStyleAsync( "white" );
//             await context.StrokeStyleAsync( "white" );

//             await context.BeginPathAsync();
//             await context.EllipseAsync( 80, 120, 80, 80, 0, 0, 360 );
//             await context.StrokeAsync();
//             await context.MoveToAsync( 80, 120 );
//             await context.FillAsync( FillRule.EvenOdd );

//             await context.BeginPathAsync();
//             await context.EllipseAsync( 240, 120, 80, 80, 0, 0, 360 );
//             await context.StrokeAsync();
//             await context.MoveToAsync( 240, 80 );
//             await context.FillAsync( FillRule.EvenOdd );

//             await drawPupil( "black", draw.left );
//             await drawPupil( "black", draw.right );
//         }
//     }
// }