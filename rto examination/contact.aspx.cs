using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace rto_examination
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("pavanpotter23@gmail.com", "jfyh xjde wdjg udvj");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + TextBox1.Text + "  Thanks for Register at RTO examination";
            msg.Body = "Hi, Thanks For Your contact at RTO examination, We will Provide You The Latest Update.Thanks For Contact Us, We will reach You very Soon.";
            string toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Rto officer <pavanpotter23@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                Response.Write("<script>alert('Your Email Has Been Contacted with Us')</script>");
             //   TextBox1.Text = "";
                TextBox2.Text = "";

            }
            catch
            {
                throw;
            }
            String today = DateTime.Now.ToLongDateString().ToString();
            String query = "insert into cont(name,email,mobile,message,messagedate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + today + "')";
            String mycon = @"Data Source=PAVAN\SQLEXPRESS;Initial Catalog=rtoquiz;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
           // Label1.Text = "Thanks For Contact Us, We will reach You very Soon.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }
    }
}