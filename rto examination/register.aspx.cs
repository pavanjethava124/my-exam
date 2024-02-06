using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rto_examination
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            }

       /* protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt5.Value = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
            if(e.Day.IsToday)
            {
                e.Cell.Controls.Add(new LiteralControl("<p style=\"color:white;\">Today's date</p>"));
            }
            if(e.Day.IsWeekend)
            {

                e.Cell.Controls.Add(new LiteralControl("<p style=\"color:pink;\">Weekend</p>"));
            } 
        }  */

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

        }
    }
}