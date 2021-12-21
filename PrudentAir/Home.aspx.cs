using Service;
using System;

namespace PrudentAir
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String loginname = Session["uname"].ToString();
            // Label1.Text = "Welcome " + Session["uname"].ToString();
            if (!IsPostBack)
            {
                BindData(loginname);
            }
        }

        protected void BindData(string loginname)
        {
            HomeService ads = new HomeService();
            DataList1.DataSource = ads.PopularFlightNoService();
            DataList1.DataBind();
            GridView1.DataSource = ads.UserReservationInfoService(loginname);
            GridView1.DataBind();
        }

    }
}
