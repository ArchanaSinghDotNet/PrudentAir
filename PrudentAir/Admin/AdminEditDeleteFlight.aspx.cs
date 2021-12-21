using Service;
using System;
using System.Web.UI.WebControls;

namespace PrudentAir.Admin
{
    public partial class AdminEditDeleteFlight : System.Web.UI.Page
    {
        AdminService _adminService = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        protected void BindData()
        {
            _adminService = new AdminService();
            GridView1.DataSource = _adminService.FlightGridBindService();
            GridView1.DataBind();
        }

        protected void EditFlight(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }
        protected void UpdateFlight(object sender, GridViewUpdateEventArgs e)
        {
            string FNo = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblFlightNo")).Text;
            string FSource = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFSource")).Text;
            string FDestination = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFDestination")).Text;
            string FBusinessCapacity = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFBusinessCapacity")).Text;
            string FEconomicCapacity = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFEconomicCapacity")).Text;
            string BussinessFare = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtBussinessFare")).Text;
            string EcoFare = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEcoFare")).Text;
            string FArrivalTime = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFArrivalTime")).Text;
            string FDepartureTime = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFDepartureTime")).Text;
            _adminService = new AdminService();
            _adminService.UpdateFlightRecordService(FNo, FSource, FDestination, FBusinessCapacity, FEconomicCapacity, BussinessFare, EcoFare, FArrivalTime, FDepartureTime);
            GridView1.EditIndex = -1;
            BindData();
        }
        protected void DeleteFlight(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;
            String FNo = lnkRemove.CommandArgument;
            _adminService = new AdminService();
            _adminService.DeleteFlightRecordService(FNo);

            BindData();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            BindData();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




    }
}
