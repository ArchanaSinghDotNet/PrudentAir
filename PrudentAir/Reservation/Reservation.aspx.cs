using Service;
using System;
using System.Data;

namespace PrudentAir.Reservation
{
    public partial class Reservation : System.Web.UI.Page
    {
        Service.ReservationService rs = null;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    string flightNo = Request.QueryString["FNo"].ToString();
                    DropDownList1.Items.Add(flightNo);
                    DropDownList1.Enabled = false;
                }
                else
                {
                    rs = new ReservationService();
                    ds = rs.DatasetReservationFlightNameBindService();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
