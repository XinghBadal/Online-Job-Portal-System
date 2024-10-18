using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_jobPortal
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (ddlusertype.SelectedValue == "1")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblAdmin where admin_email='" + txtemail.Text + "' and admin_password='" + txtpassword.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["ADMINID"] = dt.Rows[0]["admin_id"];
                    Response.Redirect("ADMIN/HomeAdmin.aspx");
                }
                else
                {
                    lblmsg.Text = "Login Failed !!";
                }
            }
            else if (ddlusertype.SelectedValue == "2")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbljobseeker where js_email='"+txtemail.Text+"' and js_password='"+txtpassword.Text+"' and status=0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["JSID"] = dt.Rows[0]["js_id"];
                    Response.Redirect("JOBSEEKER/HomeJobSeeker.aspx");
                }
                else
                {
                    lblmsg.Text = "Login Failed !!";
                }
            }
            else if (ddlusertype.SelectedValue == "3")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbljobRecruiter where jr_email='" + txtemail.Text + "' and jr_password='" + txtpassword.Text + "' and status=0 ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["JRID"] = dt.Rows[0]["jr_id"];
                    Response.Redirect("JOBRECRUITER/HomeJobRecruiter.aspx");
                }
                else
                {
                    lblmsg.Text = "Login Failed !!";
                }
            }
        }
    }
}