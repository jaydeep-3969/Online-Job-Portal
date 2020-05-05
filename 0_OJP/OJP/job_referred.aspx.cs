using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];

            if (e.CommandName == "show_job")
            {
                Response.Redirect("job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "delete_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_refed_job WHERE job_id=" + e.CommandArgument.ToString();

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of referred job");
                    }
                    else
                    {
                        Response.Write("Deleted 1 referred job");
                        Response.Redirect("job_referred.aspx");
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