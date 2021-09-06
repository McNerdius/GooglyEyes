
using Microsoft.Azure.Functions.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;

[assembly: FunctionsStartup( typeof( GooglyEyes.Functions.Startup ) )]
namespace GooglyEyes.Functions;

public class Startup : FunctionsStartup
{
    public override void Configure( IFunctionsHostBuilder builder )
    {
    }

    public override void ConfigureAppConfiguration( IFunctionsConfigurationBuilder builder )
    {
        FunctionsHostBuilderContext context = builder.GetContext();

        builder.ConfigurationBuilder
            .AddEnvironmentVariables()
            .SetBasePath( context.ApplicationRootPath )
            .AddJsonFile( "local.settings.json", optional: true, reloadOnChange: true );
    }
}