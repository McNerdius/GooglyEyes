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
        [HttpTrigger( AuthorizationLevel.Anonymous, "get", "post", Route = null )] HttpRequest httpRequest,
        [Blob( "googly/readings.json", FileAccess.Read )] Stream blobInput,
        [Blob( "googly/readings.json", FileAccess.Write )] Stream blobOutput,
        ILogger log )
    {
        var readings = blobInput switch
        {
            null => Array.Empty<Reading>(),
            _ => await JsonSerializer.DeserializeAsync<IEnumerable<Reading>>( blobInput )
        };

        var reading = JsonSerializer.Deserialize<Reading>( await httpRequest.ReadAsStringAsync() );
        var time = TimeZoneInfo.ConvertTimeFromUtc( DateTime.UtcNow, TimeZoneInfo.FindSystemTimeZoneById( "Mountain Standard Time" ) );
        reading.Time = time.ToString();

        readings = readings.Take( 100 ).Prepend( reading );

        await JsonSerializer.SerializeAsync( blobOutput, readings, new JsonSerializerOptions { IgnoreNullValues = true } );

        return new OkResult();
    }

    [FunctionName( "GetReading" )]
    public static async Task<IActionResult> GetReading(
    [HttpTrigger( AuthorizationLevel.Anonymous, "get", "post", Route = null )] HttpRequest _,
    [Blob( "googly/readings.json", FileAccess.Read )] Stream blobInput )
    {
        if ( blobInput is null )
        {
            return new NotFoundResult();
        }
        else
        {
            var reading = (await JsonSerializer.DeserializeAsync<IEnumerable<Reading>>( blobInput )).First();

            return new ContentResult
            {
                Content = JsonSerializer.Serialize( reading, new JsonSerializerOptions { IgnoreNullValues = true } ),
                ContentType = "application/json"
            };
        }
    }
}