using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageWordCloud
{
    public partial class SimpleLinkInclude : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            max.Value = "500";
            perline.Checked = false;
            font.Value = @"""Helvetica Neue"", Helvetica, Arial, sans-serif";
            //Just copy from the visible explanation
            WordCloudText.Text = LiteralExplanation.Text;
            wordcloudcanvaswidth.Text = "540";
            wordcloudcanvasheight.Text = "540";
        }
    }
}