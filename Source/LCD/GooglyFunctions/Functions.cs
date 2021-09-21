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
        [HttpTrigger( AuthorizationLevel.Anonymous, "get", "post", Route = "GetReading/{adcValue:int}" )] HttpRequest httpRequest,
        [Blob( "googly/readings.json", FileAccess.Read )] Stream blobInput,
        [FromQuery] int adcValue,
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

                reading.Time = LedMatrix.ToByteArray( time ).Reverse().ToArray();

                // Raw ADC value to 2-digit 8x8 representation
                // A0 is fed battery level split with a 350k/100k voltage divider for a max of 0.93 volts
                // 130k on R1 from battery shield: https://www.wemos.cc/en/latest/_static/files/sch_battery_v1.3.0.pdf
                // 220k on R1, 100k on R2 from D1 itself: https://www.wemos.cc/en/latest/_static/files/sch_d1_mini_v3.0.0.pdf
                // 0.93 * 1023 = 951 theoretically == 100% / 4.2v
                // volts = adc / 951 * 4.2
                var volts = adcValue / 951f * 4.2f;
                reading.Battery = LedMatrix.ToByteArray( volts ).Reverse().ToArray();

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