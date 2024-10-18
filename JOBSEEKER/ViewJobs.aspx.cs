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
    public partial class ViewJobs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobLocation();
                BindJobProfile();
                BindJobPost();
            }
        }

        public void BindJobLocation()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljoblocation ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ddljoblocation.DataValueField = "jrl_id";
            ddljoblocation.DataTextField = "jrl_name";
            ddljoblocation.DataSource = dt;
            ddljoblocation.DataBind();
            ddljoblocation.Items.Insert(0, new ListItem("--select--", "0"));
        }

        public void BindJobProfile()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobprofile ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ddljobprofile.DataValueField = "jpr_id";
            ddljobprofile.DataTextField = "jpr_name";
            ddljobprofile.DataSource = dt;
            ddljobprofile.DataBind();
            ddljobprofile.Items.Insert(0, new ListItem("--select--", "0"));
        }
        public void BindJobPost()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobRecruiter on tbljobpost.jr_id=tbljobRecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocation on tbljobpost.jrl_id=tbljoblocation.jrl_id where tbljobpost.status=0", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvjobs.DataSource = dt;
            gvjobs.DataBind();
            
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobRecruiter on tbljobpost.jr_id=tbljobRecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocation on tbljobpost.jrl_id=tbljoblocation.jrl_id where tbljobpost.status=0 and tbljobpost.jrl_id='"+ddljoblocation.SelectedValue+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvjobs.DataSource = dt;
            gvjobs.DataBind();
        }

        protected void btnsearch_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobRecruiter on tbljobpost.jr_id=tbljobRecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocation on tbljobpost.jrl_id=tbljoblocation.jrl_id where tbljobpost.status=0 and tbljobpost.jpr_id='" + ddljobprofile.SelectedValue + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvjobs.DataSource = dt;
            gvjobs.DataBind();
        }
    }
}