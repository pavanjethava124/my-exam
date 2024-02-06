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
     // String newcon = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
      //SqlConnection mcon = new SqlConnection(newcon);


    public partial class addque : System.Web.UI.Page
    {
        SqlConnection mcon;
        SqlCommand cmd;

        SqlCommand rcmd;
        SqlDataReader rdr;

        SqlCommand qcmd;
        SqlDataReader qdr;
       
        string qry;
        string nqry;
        string test;


        int ans;
        int qid;
        int flag=1;
        protected void Page_Load(object sender, EventArgs e)
        {
           // String newcon = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
           mcon = new SqlConnection(@"Data Source=PAVAN\SQLEXPRESS;Initial Catalog=rtoquiz;Integrated Security=True");

        }
        protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
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

            
            if (testlist.Visible)
            {
                test = testlist.Text;
            }
            else
            {
                if (testname.Text == "")
                {
                    //msg1.Text = "Enter the test name";
                    //flag = 0;
                }
                else
                {
                    mcon.Open();
                    nqry = "select * from question where settype='" + testname.Text + "'";
                    rcmd = new SqlCommand(nqry, mcon);
                    rdr = rcmd.ExecuteReader();

                    //if (rdr.HasRows)
                    //{
                        //msg1.Text = "Test name already exist";
                      // flag = 0;
                    //}
                    test = testname.Text;
                    mcon.Close();

                }
            }
            if (flag != 0)
            {
                mcon.Open();
                qcmd = new SqlCommand("select MAX(qid) from question", mcon);
                qdr = qcmd.ExecuteReader();
                qdr.Read();

                if (qdr.IsDBNull(0))
                {
                    qid = 1;
                }
                else
                {
                    qid = Convert.ToInt16(qdr.GetValue(0)) + 1;
                }
                mcon.Close();
                
                mcon.Open();
                String pimg = "~/Admin/Exam/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(pimg));
                SqlCommand cmds = new SqlCommand("insert into question values("+qid+",'" + TextBox1.Text + "','"+test+"','" +pimg + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" +TextBox4.Text+ "',"+ans+")", mcon);
                
                cmds.ExecuteNonQuery();
                mcon.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('God','record inserted...','success')", true);


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (testlist.Visible)
            {
                testname.Visible = true;
                testlist.Visible = false;
                ntest.Text = "Old test";
            }
            else
            {
                testname.Visible = false;
                testlist.Visible = true;
                ntest.Text = "new test";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }
    }
}