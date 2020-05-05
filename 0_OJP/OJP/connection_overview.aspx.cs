using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void dl_connection_overview_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];

            if (e.CommandName == "disconnect")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_connection WHERE (src_js_user_id=" + e.CommandArgument.ToString()+"AND dest_js_user_id="+user_id+ ") OR (dest_js_user_id=" + e.CommandArgument.ToString() + "AND src_js_user_id=" + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of connection");
                    }
                    else
                    {
                        Response.Write("Deleted 1 Connection");
                        Response.Redirect("connection_overview.aspx");
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
        }
    }
}