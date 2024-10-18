using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_jobPortal.JOBRECRUITER
{
    public partial class Registration_JobRecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_jobrecruiter_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jr_name", txtname.Text);
            cmd.Parameters.AddWithValue("@jr_url", txturl.Text);
            cmd.Parameters.AddWithValue("@jr_email", txtemail.Text);
            cmd.Parameters.AddWithValue("@jr_password", txtpassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}