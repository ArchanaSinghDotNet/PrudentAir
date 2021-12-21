using Service;
using System;
using System.Data;

namespace PrudentAir
{

    public partial class Flight : System.Web.UI.Page
    {
        DataSet ds;
        FlightService fs = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            fs = new FlightService();
            ds = fs.GetAvailableFlightsService();
            if (!IsPostBack)
            {
                BindData();
            }
            grdFlights.DataSource = ds;
            grdFlights.DataBind();
        }

        protected void BindData()
        {
            HomeService hs = new HomeService();

            DataList2.DataSource = hs.PopularFlightNoService();
            DataList2.DataBind();
        }
    }
}
