﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Xml.Linq;

namespace Project_jobPortal.JOBRECRUITER
{
    public partial class JobPost_JobRecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-ESCKU6I6\\SQLEXPRESS;initial catalog=DB_JOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobProfile();
                BindJobLocation();
            }
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

        protected void btnjobpost_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("jobpost_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jr_id", Session["JRID"]);
            cmd.Parameters.AddWithValue("@jpr_id", ddljobprofile.SelectedValue);
            cmd.Parameters.AddWithValue("@minexp", txtminexp.Text);
            cmd.Parameters.AddWithValue("@maxexp", txtmaxexp.Text);
            cmd.Parameters.AddWithValue("@minsalary", txtminsalary.Text);
            cmd.Parameters.AddWithValue("@maxsalary", txtmaxsalary.Text);
            cmd.Parameters.AddWithValue("@noofvacancy", txtnoofvacancy.Text);
            cmd.Parameters.AddWithValue("@jrl_id", ddljoblocation.SelectedValue);
            cmd.Parameters.AddWithValue("@comments", txtcomments.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}