using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm15 : System.Web.UI.Page
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

            if (e.CommandName == "decline")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM request WHERE (src_user_id=" + e.CommandArgument.ToString() + "AND dest_user_id=" + user_id + ")";

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
                        Response.Redirect("connection_request.aspx");
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if (e.CommandName == "accept")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];


                //acception of request
                cmd.CommandText = "INSERT INTO js_connection (src_js_user_id,dest_js_user_id) VALUES ("+ e.CommandArgument.ToString() + "," + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in INSERTION of CONNECTION");
                    }
                   /* else
                    {
                        Response.Write("Inserted 1 Connection");
                        Response.Redirect("connection_request.aspx?user_id=" + Request.QueryString["user_id"]);
                    }*/
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }


                //deletion of request
                cmd.CommandText = "DELETE FROM request WHERE (src_user_id=" + e.CommandArgument.ToString() + "AND dest_user_id="+ user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in deletion of request");
                    }
                   /* else
                    {
                        Response.Write("Deleted 1 Request");
                        Response.Redirect("connection_request.aspx?user_id=" + Request.QueryString["user_id"]);
                    }*/
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }


                //---------------sending notification-------------------------------
                String timestamp = DateTime.Today.ToString();
                //----------------INSERTION INTO js_notification--------------------
                cmd.CommandText = "INSERT INTO js_notification (type_id,timestamp,js_user_id,is_open) VALUES (1,'" + timestamp + "'," + e.CommandArgument.ToString() + ",0)";// + Request.QueryString["user_id"] + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in INSERTION of nottification");
                    }
                    /* else
                     {
                         Response.Write("Inserted 1 Connection");
                         Response.Redirect("connection_request.aspx?user_id=" + Request.QueryString["user_id"]);
                     }*/
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }

                //GETTING NOTIFICATION ID
                cmd.CommandText = "SELECT * FROM js_notification WHERE js_user_id=" + e.CommandArgument.ToString() + "AND timestamp='"+timestamp+"'";

                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                int not_id;


                sdr.Read();
                not_id = (int)sdr["not_id"];
                cmd.Parameters.Clear();
                con.Close();

                //----------------INSERTION INTO accept_not--------------------
                cmd.CommandText = "INSERT INTO accept_not (not_id,src_user_id) VALUES (" + not_id + "," + user_id + ")";

                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in INSERTION of nottification");
                    }
                    else
                     {
                         Response.Write("Inserted 1 Connection");
                         Response.Redirect("connection_request.aspx");
                     }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }
            }
            else if(e.CommandName == "show_profile")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_js_personal.aspx");
            }
        }
    }
}