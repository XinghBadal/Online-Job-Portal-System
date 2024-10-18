using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Project_jobPortal.JOBRECRUITER;

namespace Project_jobPortal.ADMIN
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAdmin();
            }
        }
        public void BindAdmin()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblAdmin where admin_id='" + Session["ADMINID"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["admin_name"].ToString();
            lblgender.Text = dt.Rows[0]["admin_gender"].ToString() == "1" ? "male" : dt.Rows[0]["admin_gender"].ToString() == "2" ? "female" : "other";
            lblemail.Text = dt.Rows[0]["admin_email"].ToString();
            lblpassword.Text = dt.Rows[0]["admin_password"].ToString();
        }
    }
}