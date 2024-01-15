using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rto_examination.Admin
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Write("Please login");
                LinkButton1.Text = "Login";

            }
            else
            {
              
                LinkButton1.Text = "Logout";
              //  Response.Redirect("logout.aspx");
            }
        }
    }
}