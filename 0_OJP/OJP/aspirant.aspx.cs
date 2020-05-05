using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "select")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_approved_job (js_user_id,job_id) VALUES ("+ e.CommandArgument.ToString()+","+Request.QueryString["job_id"]+")";


                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in insertion  of approved job");
                    }
                   /* else
                    {
                        Response.Write("Deleted 1 Applied job");
                        Response.Redirect("aspirant.aspx?job_id=" + Request.QueryString["job_id"]);
                    }*/
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }


                cmd.CommandText = "DELETE FROM js_applied_job WHERE job_id=" + Request.QueryString["job_id"] + " AND js_user_id=" + e.CommandArgument.ToString();

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in insertion  of approved job");
                    }
                     else
                     {
                         Response.Write("Deleted 1 Applied job");
                         Response.Redirect("aspirant.aspx?job_id=" + Request.QueryString["job_id"]);
                     }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }

            }
            else if (e.CommandName == "show_profile")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_js_personal.aspx");
            }
            else if (e.CommandName == "show_reference")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("reference_js.aspx");
            }
        }
    }
}