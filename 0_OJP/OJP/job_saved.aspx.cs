using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];
            if (e.CommandName == "show_job")
            {
                Response.Redirect("job_detailed.aspx?job_id="+e.CommandArgument.ToString());
            }
            else if (e.CommandName == "unsave_job")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_saved_job WHERE job_id=" + e.CommandArgument.ToString();

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of saved job");
                    }
                    else
                    {
                        Response.Write("Deleted 1 Saved job");
                        Response.Redirect("job_saved.aspx");
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