using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_jobPortal.JOBSEEKER
{
    public partial class HomeJobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobSeeker();
            }
        }

        public void BindJobSeeker()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobseeker where js_id='" + Session["JSID"] +"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["js_name"].ToString();
            lblgender.Text = dt.Rows[0]["js_gender"].ToString()=="1" ? "male" : dt.Rows[0]["js_gender"].ToString()=="2" ? "female" : "other";
            lblemail.Text = dt.Rows[0]["js_email"].ToString();
            lblpassword.Text = dt.Rows[0]["js_password"].ToString();

        }
    }
}