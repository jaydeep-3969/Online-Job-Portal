using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class connection_request_sent : System.Web.UI.Page
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

            if (e.CommandName == "cancel")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM request WHERE (dest_user_id=" + e.CommandArgument.ToString() + "AND src_user_id=" + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of request");
                    }
                    else
                    {
                        Response.Write("Deleted 1 Request");
                        Response.Redirect("connection_request_sent.aspx");
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