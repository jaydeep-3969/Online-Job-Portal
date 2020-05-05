using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            // Session["role"] = 1;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];

            if (e.CommandName == "show_job")
            {
                Response.Redirect("job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "unapply_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_applied_job WHERE job_id=" + e.CommandArgument.ToString();

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of applied job");
                    }
                    else
                    {
                        Response.Write("Deleted 1 Applied job");
                        Response.Redirect("job_applied.aspx");
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if (e.CommandName == "save_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_saved_job (job_id,js_user_id) VALUES (" + e.CommandArgument.ToString()+","+user_id+")";

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
                        Response.Redirect("job_applied.aspx");
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            int user_id = (int)Session["user_id"];
            //int user_id = 35;

            Button save_btn = e.Item.FindControl("btn_save") as Button;

            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "SELECT job_id FROM js_saved_job WHERE job_id="+save_btn.CommandArgument+"AND js_user_id="+user_id;

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

        }
    }
}