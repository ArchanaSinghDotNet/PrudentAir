using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrudentAir
{
    public partial class Calender : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            TextBox1.Text = System.DateTime.Today.ToShortDateString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            Calendar1.Visible = true;
        }
    }
}