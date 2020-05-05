using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            //lbl_user_id.Text = ((int)Session["user_id"]).ToString();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "show_job_detail")
            {
                Response.Redirect("jp_job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "show_aspirant")
            {
                Response.Redirect("aspirant.aspx?job_id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "delete")
            {
                int user_id = (int)Session["user_id"];
                //int user_id = 0;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM jp_job WHERE job_id =" + e.CommandArgument.ToString();

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
            else if (e.CommandName == "show_selected_aspirant")
            {
                Response.Redirect("aspirant_selected.aspx?job_id=" + e.CommandArgument.ToString());
            }
        }

        
    }
}