using Service;
using System;
using System.Data;

namespace PrudentAir.Admin
{
    public partial class FlightManager : System.Web.UI.Page
    {
        Service.AdminService asd = null;
        DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            int i;
            ds = new DataSet();
            if (!IsPostBack)
            {

                asd = new Service.AdminService();
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
            asd = new Service.AdminService();
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
            asd = new Service.AdminService();
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

        protected void ddlDestinationCity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Create_flight_Click(object sender, EventArgs e)
        {
            String Source = ddlSourceCity.SelectedItem.ToString();
            String Destination = ddlDestinationCity.SelectedItem.ToString();
            String Bussinessfare = TextBussinessFare.Text.ToString();
            String Economicfare = TextEconomicFare.Text.ToString();
            String Arrivaltime = TextFlightArrival.Text.ToString();
            String Departuretime = TextFlightDeparture.Text.ToString();
            String Bussinesscapacity = TextBussinessCapacity.Text.ToString();
            String Economiccapacity = TextEconomicCapacity.Text.ToString();
            asd = new AdminService();
            asd.Create_FlightService(Source, Destination, Bussinessfare, Economicfare, Arrivaltime, Departuretime, Bussinesscapacity, Economiccapacity);
            lblFlightcreation_confirm.Visible = true;
        }
    }
}
