using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void dl_job_detail_ItemCommand(object source, DataListCommandEventArgs e)
        {

            int user_id = (int)Session["user_id"];
            //int user_id = 35;

            if (e.CommandName == "save_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_saved_job (job_id,js_user_id) VALUES (" + e.CommandArgument.ToString() + "," + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in saving of applied job");
                    }
                    else
                    {
                        Response.Write("Saved 1 Applied job");
                        Response.Redirect("job_detailed.aspx?job_id=" + Request.QueryString["job_id"]);
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if (e.CommandName == "apply_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_applied_job (job_id,js_user_id) VALUES (" + e.CommandArgument.ToString() + "," + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in applying job");
                    }
                    else
                    {
                        Response.Write("Applied 1 job");
                        Response.Redirect("job_detailed.aspx?job_id=" + Request.QueryString["job_id"]);
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if (e.CommandName == "refer_job")
            {
                Response.Redirect("connection_refer.aspx?user_id=" + user_id + "&job_id=" + Request.QueryString["job_id"]);
            }
            else if (e.CommandName == "show_company")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_jp_company.aspx");

            }
        }

        protected void dl_job_detail_ItemDataBound(object sender, DataListItemEventArgs e)
        {

            

            int user_id = (int)Session["user_id"];
            //int user_id = 35;

            Button save_btn = e.Item.FindControl("btn_save") as Button;
            Button apply_btn = e.Item.FindControl("btn_apply") as Button;
            Button refer_btn = e.Item.FindControl("btn_refer") as Button;

            
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];


            //for save button
            cmd.CommandText = "SELECT job_id FROM js_saved_job WHERE job_id=" + save_btn.CommandArgument + "AND js_user_id="+user_id;

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {

                if (sdr.HasRows)
                {
                    save_btn.Enabled = false;
                }
                else
                {
                    save_btn.Enabled = true;
                }

            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            //for apply button(applied job)
            cmd.CommandText = "SELECT job_id FROM js_applied_job WHERE job_id=" + apply_btn.CommandArgument+"AND js_user_id="+user_id+" UNION " + "SELECT job_id FROM js_approved_job WHERE job_id=" + apply_btn.CommandArgument + "AND js_user_id=" + user_id;

            con.Open();
            sdr = cmd.ExecuteReader();

            try
            {

                if (sdr.HasRows)
                {
                    apply_btn.Enabled = false;
                }
                else
                {
                    apply_btn.Enabled = true;
                }

            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            if ((int)Session["role"] == 2)
            {
                apply_btn.Visible = false;
                save_btn.Visible = false;
                refer_btn.Visible = false;
            }


            //for apply button (approved job)
            /*  cmd.CommandText = "SELECT job_id FROM js_approved_job WHERE job_id=" + apply_btn.CommandArgument + "AND js_user_id=" + user_id;

              con.Open();
              sdr = cmd.ExecuteReader();

              try
              {

                  if (sdr.HasRows)
                  {
                      apply_btn.Enabled = false;
                  }
                  else
                  {
                      apply_btn.Enabled = true;
                  }

              }
              finally
              {
                  cmd.Parameters.Clear();
                  con.Close();
              }*/
        }

    }
}