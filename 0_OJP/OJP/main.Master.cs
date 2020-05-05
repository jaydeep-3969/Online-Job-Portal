using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total_jobs = 0;
            int total_js = 0;
            int total_jp = 0;

            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "SELECT count(*) as total_jobs FROM jp_job";

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {
                if (sdr.HasRows)
                {
                    sdr.Read();
                    total_jobs = (int)sdr["total_jobs"];
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


            //counting total job seeker
            cmd.CommandText = "SELECT count(*) as total_js FROM js_master";

            con.Open();
            sdr = cmd.ExecuteReader();

            try
            {
                if (sdr.HasRows)
                {
                    sdr.Read();
                    total_js = (int)sdr["total_js"];
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            //counting total job providers
            cmd.CommandText = "SELECT count(*) as total_jp FROM jp_master";

            con.Open();
            sdr = cmd.ExecuteReader();

            try
            {
                if (sdr.HasRows)
                {
                    sdr.Read();
                    total_jp = (int)sdr["total_jp"];
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            lbl_total_jobs.Text = total_jobs.ToString();
            lbl_total_js.Text = total_js.ToString();
            lbl_total_jp.Text = total_jp.ToString();

            //for search panel
            if (Session["user_id"] == null  || Session["reset_pswd"] != null || Session["signup"] != null)
            {
               Page.Master.FindControl("search").Visible = false;
            }

            if (Session["user_id"] == null || Session["reset_pswd"] != null || Session["signup"] != null)
            {
                Page.Master.FindControl("logout").Visible = false;
            }
        }
    }
}