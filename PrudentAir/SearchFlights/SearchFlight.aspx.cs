using System;
using System.Data;
//using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PrudentAir.SearchFlights
{
    public partial class SearchFlight : System.Web.UI.Page
    {

        Service.SearchFlightService asd = null;
        DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            int i;
            ds = new DataSet();
            if (!IsPostBack)
            {

                asd = new Service.SearchFlightService();
                ds = asd.Country_Bind();
                for (i = 0; ds.Tables[0].Rows.Count > i; i++)
                {
                    ddlSourceCountry.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                    ddlDestinationCountry.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }

            }
        }

        protected void SourceCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSourceCity.Items.Clear();

            string name;
            name = ddlSourceCountry.SelectedItem.ToString();
            asd = new Service.SearchFlightService();
            ds = asd.City_Bind(name);

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
                {
                    ddlSourceCity.Items.Add(ds.Tables[0].Rows[i][0].ToString());

                }
                lblSourceCity.Visible = true;
                ddlSourceCity.Visible = true;

            }

        }

        protected void DestinationCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDestinationCity.Items.Clear();
            string name;
            name = ddlDestinationCountry.SelectedItem.ToString();
            asd = new Service.SearchFlightService();
            ds = asd.City_Bind(name);

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
                {

                    ddlDestinationCity.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }
                lblDestinationCity.Visible = true;
                ddlDestinationCity.Visible = true;

            }
        }

        protected void Search_flight_Click(object sender, EventArgs e)
        {
            String SourceCity = null;
            String DestinationCity = null;
            asd = new Service.SearchFlightService();
            //ds = asd.SearchFlightGridBindService(SourceCity, DestinationCity);
            //for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
            //{
            //    if (ddlSourceCity.SelectedItem.Text.ToString().Equals(ds.Tables[0].Rows[i][0].ToString()))
            //{
            //    SourceCity = ds.Tables[0].Rows[i][1].ToString();
            //}
            //}
            //for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
            //{
            //    if (ddlDestinationCity.SelectedItem.Text.ToString().Equals(ds.Tables[0].Rows[i][0].ToString()))
            //    {
            //        DestinationCity = ds.Tables[0].Rows[i][1].ToString();
            //    }
            //}
            SourceCity = ddlSourceCity.Text.ToString();
            DestinationCity = ddlDestinationCity.Text.ToString();
            GridView1.DataSource = asd.SearchFlightGridBindService(SourceCity, DestinationCity);
            GridView1.DataBind();
        }
        protected DataSet GetData(SqlCommand cmd)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            adpt.Fill(ds);
            return ds;
        }
        protected void OnPaging(object sender, GridViewPageEventArgs g)
        {
            //BindData();
            String SourceCity = null;
            String DestinationCity = null;
            asd = new Service.SearchFlightService();
            asd.SearchFlightGridBindService(SourceCity, DestinationCity);
            GridView1.PageIndex = g.NewPageIndex;
            GridView1.DataBind();
        }


    }
}
