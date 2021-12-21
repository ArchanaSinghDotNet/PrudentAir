using Service;
using System;
using System.Data;

namespace PrudentAir.Admin
{
    public partial class AdminCreateUser : System.Web.UI.Page
    {
        Service.AdminService asd = null;
        DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = new DataSet();
            if (!IsPostBack)
            {

                asd = new Service.AdminService();
                ds = asd.UserTypeBindService();
                for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
                {
                    ddlUserType.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String utype = null;
            asd = new Service.AdminService();
            ds = asd.UserTypeBindService();
            for (int i = 0; ds.Tables[0].Rows.Count > i; i++)
            {
                if (ddlUserType.SelectedItem.Text.ToString().Equals(ds.Tables[0].Rows[i][0].ToString()))
                {
                    utype = ds.Tables[0].Rows[i][1].ToString();
                }
            }
            asd = new Service.AdminService();
            asd.CreateUserService(txtLoginName.Text, txtUserName.Text, utype);
        }

        protected void chkavlibility_Click(object sender, EventArgs e)
        {
            asd = new AdminService();
            asd.chkLogin_nameService(txtLoginName.Text);
            if (asd.chkLogin_nameService(txtLoginName.Text) > 0)
            {

                lblaction_chk.Text = "All ready exist!";
                lblaction_chk.Visible = true;
            }
            else
            {

                action_chk.Visible = true;

            }
        }
    }
}
