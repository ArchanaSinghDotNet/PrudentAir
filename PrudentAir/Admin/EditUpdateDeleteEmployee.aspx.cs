using Service;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PrudentAir.Admin
{
    public partial class EmployeeManager : System.Web.UI.Page
    {
        AdminService _adminService = null;
        //  private String strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            _adminService = new AdminService();
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            GridView1.DataSource = _adminService.EmployeeGridBindService();
            GridView1.DataBind();
        }

        private DataSet GetData(SqlCommand cmd)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            adpt.Fill(ds);
            return ds;
        }

        protected void AddNewCustomer(object sender, EventArgs e)
        {
            //string eid = ((TextBox)GridView1.FooterRow.FindControl("txtEmployeeID")).Text;
            string ename = ((TextBox)GridView1.FooterRow.FindControl("txtEname")).Text;
            string elast = ((TextBox)GridView1.FooterRow.FindControl("txtELast")).Text;
            string address = ((TextBox)GridView1.FooterRow.FindControl("txtEAddress")).Text;
            string contactnumber = ((TextBox)GridView1.FooterRow.FindControl("txtEContactNumber")).Text;
            string password = ((TextBox)GridView1.FooterRow.FindControl("txtEPassword")).Text;
            string dob = ((TextBox)GridView1.FooterRow.FindControl("txtEdob")).Text;
            string uid = ((TextBox)GridView1.FooterRow.FindControl("txtUid")).Text;

            _adminService = new AdminService();
            _adminService.InsertEmployeeRecordService(ename, elast, uid, address, contactnumber, password, dob);
            //SqlConnection con = new SqlConnection(strConnString);
            //SqlCommand cmd = new SqlCommand("insert into employee(eid, fname, lname) values(@CustomerID, @ContactName, @CompanyName)", con);
            //con.Open();
            //cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = CustomerID;
            //cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = Name;
            //cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = Company;
            //cmd.ExecuteNonQuery();
            //cmd.CommandText = "select eid,fname,lname from employee ";
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
            BindData();
            //Control ctrl = GridView1.HeaderRow.FindControl("chkBxHeader");
            //CheckBox cb = (CheckBox)ctrl;
            //if (cb.Checked == true)
            //{
            //}
        }

        protected void EditCustomer(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
        {
            string eid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblEmployeeID")).Text;
            string ename = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEname")).Text;
            string elast = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtELast")).Text;
            string uid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblUid")).Text;
            string address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEAddress")).Text;
            string contactnumber = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEContactNumber")).Text;
            string password = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEPassword")).Text;
            string dob = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEdob")).Text;
            _adminService = new AdminService();
            _adminService.UpdateEmployeeRecordService(eid, ename, elast, uid, address, contactnumber, password, dob);

            GridView1.EditIndex = -1;
            //cmd.CommandText = "select eid,fname,lname from employee ";
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
            BindData();
        }

        protected void DeleteCustomer(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;
            String id = lnkRemove.CommandArgument;
            _adminService = new AdminService();
            _adminService.DeleteEmployeeRecordService(id);

            BindData();
        }
        #region chekckall commented code
        /*
        protected void RemoveAllCustomer(object sender, EventArgs e)
        {
            //StringCollection sc = new StringCollection();
            # region Saurabh Commented Code
            //string id = string.Empty;
            //SqlCommand cmd = null;
            //for (int i = 0; i < GridView1.Rows.Count; i++)//loop the GridView Rows
            //{
            //    CheckBox cb = (CheckBox)GridView1.Rows[i].Cells[4].FindControl("chkBxSelect"); //find the CheckBox
            //    if (cb != null)
            //    {
            //        if (cb.Checked)
            //        {
            //            Label l =(Label) GridView1.Rows[i].Cells[1].FindControl("lblCustomerID"); // get the id of the field to be deleted
            //            id = l.Text;
            //            SqlConnection con = new SqlConnection(strConnString);
            //            cmd = new SqlCommand("delete from  employee where " + "eid=@CustomerID;", con);
            //            con.Open();
            //            cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = id;
            //            cmd.ExecuteNonQuery();
            //            //sc.Add(id); // add the id to be deleted in the StringCollection
            //        }
            //    }
            //}
            # endregion saurabh commented code 
            BindData();
            //cmd.CommandText = "select eid,fname,lname from employee ";
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
        //DeleteRecords(sc); // call method for delete and pass the StringCollection values
        //BindGridView(); // Bind GridView to reflect changes made here
        }
   */
        #  endregion
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            BindData();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate))
            {
                # region Check all commented Code
                //        CheckBox chkBxSelect = (CheckBox)e.Row.Cells[1].FindControl("chkBxSelect");
                //        CheckBox chkBxHeader = (CheckBox)this.GridView1.HeaderRow.FindControl("chkBxHeader");
                //        chkBxSelect.Attributes["onclick"] = string.Format("javascript:ChildClick(this,'{0}');",chkBxHeader.ClientID);
                # endregion
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }

}
