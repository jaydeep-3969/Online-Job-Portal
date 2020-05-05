using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm21 : System.Web.UI.Page
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
            if (e.CommandName == "show_aspirant")
            {
                Response.Redirect("aspirant.aspx?job_id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "delete")
            {
                int user_id = (int)Session["user_id"];
                //int user_id = 0;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM jp_job WHERE job_id =" + Request.QueryString["job_id"];

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of posted job");
                    }
                    else
                    {
                        Response.Write("Deleted 1 posted job");
                        Response.Redirect("posted_job.aspx?user_id=" + user_id);
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if (e.CommandName == "edit")
            {


            }
            else if (e.CommandName == "show_selected_aspirant")
            {
                Response.Redirect("aspirant_selected.aspx?job_id=" + e.CommandArgument.ToString());
            }


        }

        protected void dl_job_detail_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            int user_id = (int)Session["user_id"];
            //int user_id = 35;

            Button asp_btn = e.Item.FindControl("btn_aspirant") as Button;
            Button select_asp_btn = e.Item.FindControl("btn_selected_asp") as Button;
            Button delete_btn = e.Item.FindControl("btn_delete") as Button;


            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "SELECT * FROM jp_job WHERE job_id=" + Request.QueryString["job_id"] + "AND jp_user_id=" + user_id;

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {

                if (sdr.HasRows)
                {

                }
                else
                {
                    asp_btn.Visible = false;
                    delete_btn.Visible = false;
                    select_asp_btn.Visible = false;
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