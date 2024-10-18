using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Project_jobPortal.JOBSEEKER;

namespace Project_jobPortal.ADMIN
{
    public partial class ManageJobRecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobRecruiter();
            }
        }
        public void BindJobRecruiter()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobrecruiter ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvjobrecruiter.DataSource = dt;
            gvjobrecruiter.DataBind();
        }

        protected void gvjobrecruiter_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("JobRecruiter_StatusChange", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("jr_id", e.CommandArgument);
            cmd.ExecuteNonQuery();
            con.Close();
            BindJobRecruiter();
        }
    }
}