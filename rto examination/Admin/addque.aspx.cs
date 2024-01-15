using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace rto_examination.Admin
{
    public partial class addque : System.Web.UI.Page
    {
        int ans;
        int qid;
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
            if (RadioButton1.Checked)
                ans = 1;

            if (RadioButton2.Checked)
                ans = 2;

            if (RadioButton3.Checked)
                ans = 3;

            else
            {
                SqlConnection con = new SqlConnection(@"Data Source = PAVAN\SQLEXPRESS; Initial Catalog = rtoquiz; Integrated Security = True");
                FileUpload1.SaveAs(Server.MapPath("/Admin/Exam/") + Path.GetFileName(FileUpload1.FileName));
                String link = "/Admin/Exam/" + Path.GetFileName(FileUpload1.FileName);
                SqlCommand cmd = new SqlCommand("insert into question values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+ans+"','" + link + "')", con); ; ;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                //tex.Text = "Data has been successfully...";
             //   TextBox1.Text = "";
               // TextBox2.Text = "";
                //TextBox3.Text = "";
                //TextBox4.Text = "";
            }
        }
    }
}