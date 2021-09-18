using System;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using System.Collections.Generic;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;

using Microsoft.Extensions.Logging;

namespace GooglyEyes.Functions;

public static class Functions
{
    [FunctionName( "AddReading" )]
    public static async Task<IActionResult> AddReading(
        [HttpTrigger( AuthorizationLevel.Anonymous, "get", "post" )] HttpRequest httpRequest,
        [Blob( "googly/readings.json", FileAccess.Read )] Stream blobInput,
        [Blob( "googly/readings.json", FileAccess.Write )] Stream blobOutput,
        ILogger log )
    {
        try
        {
            var readings = blobInput switch
            {
                null => Array.Empty<Reading>(),
                _ => await JsonSerializer.DeserializeAsync<IEnumerable<Reading>>( blobInput )
            };

            var reading = JsonSerializer.Deserialize<Reading>( await httpRequest.ReadAsStringAsync() );
            readings = readings.Take( 100 ).Prepend( reading );

            await JsonSerializer.SerializeAsync( blobOutput, readings, new JsonSerializerOptions { WriteIndented = true } );

            return new OkResult();
        }
        catch ( Exception e )
        {
            log.LogError( e, e.Message );
            return new EmptyResult();
        }
    }

    [FunctionName( "GetReading" )]
    public static async Task<IActionResult> GetReading(
    [HttpTrigger( AuthorizationLevel.Anonymous, "get", "post" )] HttpRequest httpRequest,
    [Blob( "googly/readings.json", FileAccess.Read )] Stream blobInput,
    ILogger log )
    {
        try
        {
            if ( blobInput is null )
            {
                log.LogError( "blob not found" );
                return new NotFoundResult();
            }
            else
            {
                var reading = (await JsonSerializer.DeserializeAsync<IEnumerable<Reading>>( blobInput )).First();

                var time = TimeZoneInfo.ConvertTimeFromUtc( DateTime.UtcNow, TimeZoneInfo.CreateCustomTimeZone( "MST", TimeSpan.FromHours( -6 ), "MST", "MST" ) ).TimeOfDay;

                log.LogInformation( time.ToString(), null );

                reading.Time = MatrixClock.ToByteArray( time ).Reverse().ToArray();
                Console.WriteLine( "----------" );
                reading.Time.ToList().ForEach( row => draw( row, reverse: true ) );
                Console.WriteLine( "----------" );

                void draw( int row, bool reverse )
                {
                    Console.Write( "|" );
                    foreach ( var bit in Enumerable.Range( 0, 8 ) )
                    {
                        var set = (row & 1 << bit) > 0;
                        Console.Write( set ? '#' : ' ' );
                    }
                    Console.WriteLine( "|" );
                }

                return new ContentResult
                {
                    Content = JsonSerializer.Serialize( reading ),
                    ContentType = "application/json"
                };
            }
        }
        catch ( Exception e )
        {
            log.LogError( e, e.Message );
            return new EmptyResult();
        }
    }
}