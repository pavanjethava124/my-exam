using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace rto_examination
{
    public partial class feedback : System.Web.UI.Page
    {
        static string rating;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
        {

            rating = e.Value.ToString();
            Label1.Text = "You have rated our website points:" + e.Value.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String newcon = WebConfigurationManager.ConnectionStrings["mycon"].ToString();       
                SqlConnection con = new SqlConnection(newcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into rating(name,email,phone,city,rating)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt32(rating.ToString()) + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Rating send sucess..')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
         //   rating = "";

                con.Close();
            
            }
    }
}