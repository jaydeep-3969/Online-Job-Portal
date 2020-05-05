using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm17 : System.Web.UI.Page
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
            int user_id = (int)Session["user_id"];

            if (e.CommandName == "show_profile")
            {
                //Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_js_personal.aspx");
            }
            else if (e.CommandName == "refer_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_refed_job (job_id,js_user_id,referred_by_id) VALUES (" +Request.QueryString["job_id"]+","+ e.CommandArgument.ToString() + "," + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in saving of referred job");
                    }
                    else
                    {
                        Response.Write("Saved 1 Applied job");
                        Response.Redirect("connection_refer.aspx?job_id="+Request.QueryString["job_id"]);
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
        }

        
    }
}