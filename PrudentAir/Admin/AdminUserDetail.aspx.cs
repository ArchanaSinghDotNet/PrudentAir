using Service;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrudentAir.Admin
{
    public partial class AllUserDetail : System.Web.UI.Page
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
            GridView1.DataSource = _adminService.UserGridBindService();
            GridView1.DataBind();
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            BindData();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            _adminService = new AdminService();
            GridView1.DataSource = _adminService.GetAllUserNameService(txtSeachUserName.Text);
            GridView1.DataBind();


        }


    }
}
