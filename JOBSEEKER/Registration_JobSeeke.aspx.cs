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
    public partial class Registration_JobSeeke : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_jobseeker_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@js_name", txtname.Text);
            cmd.Parameters.AddWithValue("@js_gender", rblgender.SelectedValue);
            cmd.Parameters.AddWithValue("@js_email", txtemail.Text);
            cmd.Parameters.AddWithValue("@js_password", txtpassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}