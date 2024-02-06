using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace rto_examination.Admin
{
    public partial class alogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         string uid = text1.Value;
         string pass = text2.Value;

            String newcon = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(newcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from a_login where uname='" + text1.Value + "'and pass='" +text2.Value + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                Response.Write("<script>alert('Login success')</script>");
                Session["uname"] = text1.Value;
                //Session["pass"] = pass;
                Response.Redirect("main.aspx");
            }

            else
            {
                Response.Write("<script>alert('uid & pass are not matched')</script>");
            }
            con.Close();

        }
    }
}