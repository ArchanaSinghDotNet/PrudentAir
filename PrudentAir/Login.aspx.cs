using Service;
using System;
using System.Web.UI;

namespace PrudentAir
{
    public partial class Default : System.Web.UI.Page
    {
        LoginService svc = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, ImageClickEventArgs e)
        {
            svc = new LoginService();
            if (svc.ChkLoginService(UserName.Text, Password.Text) > 0)
            {
                Session["uname"] = UserName.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Please enter correct UserName & Password.";
            }

            Label1.Visible = true;
        }
    }
}
