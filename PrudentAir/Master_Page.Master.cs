using System;

namespace PrudentAir
{
    public partial class Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblwelcome.Text = "Welcome " + Session["uname"].ToString();
            lblwelcome.Visible = true;
        }
    }
}
