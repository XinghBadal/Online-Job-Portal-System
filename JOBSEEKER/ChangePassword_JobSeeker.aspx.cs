﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_jobPortal.JOBSEEKER
{
    public partial class ChangePassword_JobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncp_Click1(object sender, EventArgs e)
        {
            if (txtnewpassword.Text == txtconfirmnewpassword.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbljobseeker set js_password='"+txtnewpassword.Text+"' where js_password='"+txtcurrentpassword.Text+"' and js_id='" + Session["JSID"] +"'", con);
                int i=cmd.ExecuteNonQuery();
                con.Close();
                if (i == 0)
                {
                    lblmsg.Text = "your current password is not matched !!";
                }
                else
                {
                    lblmsg.Text = "your password has been changed successfully !!";
                }
            }
            else
            {
                lblmsg.Text = "password do not match !!";
            }
        }
    }
}