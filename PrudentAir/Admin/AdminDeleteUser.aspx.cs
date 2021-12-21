using Service;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrudentAir.Admin
{
    public partial class deleteUser : System.Web.UI.Page
    {
        DataSet ds;
        AdminService asd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Username_Click(object sender, ImageClickEventArgs e)
        {
            asd = new AdminService();
            ds = asd.Search_UsernameService(txtSearchUserName.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;
            String id = lnkRemove.CommandArgument;
            asd = new AdminService();
            asd.Delete_Username(id);
            lbldeleteUsername.Visible = true;
        }

    }
}
