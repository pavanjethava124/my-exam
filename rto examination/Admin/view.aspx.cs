using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace rto_examination.Admin
{
    public partial class view : System.Web.UI.Page
    {
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string qry;

        string settype;

        protected void Page_Load(object sender, EventArgs e)
        {
            String newcon = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(newcon);
            con.Open();
            settype = System.Convert.ToString(Request.QueryString["settype"]);
            HiddenField1.Value = testlist.SelectedValue;
            qry = "select * from question where settype='" + HiddenField1.Value + "' order by qid";
            cmd = new SqlCommand(qry, con);
           
            dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();//show 
            con.Close();


        }
        protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}