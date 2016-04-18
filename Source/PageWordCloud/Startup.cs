using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PageWordCloud.Startup))]
namespace PageWordCloud
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
