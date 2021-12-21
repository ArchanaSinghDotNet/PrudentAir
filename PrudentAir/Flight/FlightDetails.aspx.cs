using Service;
using System;
using System.Data;

namespace PrudentAir
{
    public partial class FlightDetails : System.Web.UI.Page
    {
        readonly FlightService ads = new FlightService();
        DataSet dds = new DataSet();
        string fno = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fno = Request.QueryString["fid"].ToString();
                lblFlightId.Text = "Information for Flight" + fno;
                lblFlightId.Visible = true;
                BindData(fno);
            }

        }
        protected void BindData(string FNo)
        {
            dds = ads.GetFlightInfoByFidService(FNo);
            if ((dds.Tables[0].Rows.Count) > 0)
            {
                lblFno.Text = dds.Tables[0].Rows[0][0].ToString();
                lblFSource.Text = dds.Tables[0].Rows[0][1].ToString();
                lblFDestination.Text = dds.Tables[0].Rows[0][2].ToString();
                lblFBusinessCapacity.Text = dds.Tables[0].Rows[0][3].ToString();
                lblFEconomicCapacity.Text = dds.Tables[0].Rows[0][4].ToString();
                lblBussinessFare.Text = dds.Tables[0].Rows[0][5].ToString();
                lblEcoFare.Text = dds.Tables[0].Rows[0][6].ToString();
                lblFArrivalTime.Text = dds.Tables[0].Rows[0][7].ToString();
                lblFDepartureTime.Text = dds.Tables[0].Rows[0][8].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Server.Transfer("~/Reservation/Reservation.aspx?FNo=" + Request.QueryString["fid"].ToString());
            Response.Redirect("~/Reservation/Reservation.aspx?FNo=" + Request.QueryString["fid"].ToString());
        }
    }

}
