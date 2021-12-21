using Service;
using System;

namespace PrudentAir.Enquiry
{
    public partial class PNREnquiry : System.Web.UI.Page
    {
        PNREnquiryService pns = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    BindData();
            //}
        }
        //protected void BindData()
        //{
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            pns = new PNREnquiryService();
            GridView1.DataSource = pns.PNREnquiryRecordService((txtPNRNo.Text).ToString());
            GridView1.DataBind();
        }
    }
}
