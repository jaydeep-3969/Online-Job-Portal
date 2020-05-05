using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm13 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            pnl_company.Visible = false;
            pnl_job.Visible = true;
            pnl_job_seeker.Visible = false;
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            DataList1.DataBind();
            DataList2.DataBind();
            DataList3.DataBind();
        }

        protected void btn_company_Click(object sender, EventArgs e)
        {

            pnl_company.Visible = true;
            pnl_job.Visible = false;
            pnl_job_seeker.Visible = false;
        }

        protected void btn_job_Click(object sender, EventArgs e)
        {

            pnl_company.Visible = false;
            pnl_job.Visible = true;
            pnl_job_seeker.Visible = false;
        }

        protected void btn_job_seeker_Click(object sender, EventArgs e)
        {
            pnl_company.Visible = false;
            pnl_job.Visible = false;
            pnl_job_seeker.Visible = true;
        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchUser(string prefixText)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlCommand cmd = new SqlCommand("spSearch",con);
            
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter parameter = new SqlParameter("@search_str", prefixText);
            cmd.Parameters.Add(parameter);

            List<string> Output = new List<string>();

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {

                while (sdr.Read())
                {
                    Output.Add(sdr["result"].ToString());
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            con.Close();
            return Output;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "show_job")
            {
                if ((int)Session["role"] == 1)
                {
                    Response.Redirect("job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
                }
                else
                {
                    Response.Redirect("jp_job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
                }
                
            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];
            if (e.CommandName == "show_js_profile")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_js_personal.aspx");
            }
            else if (e.CommandName == "request")
            {

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];


                //INSERTION OF REQUEST
                cmd.CommandText = "INSERT INTO request (src_user_id,dest_user_id) VALUES (" + user_id + "," + e.CommandArgument.ToString() + ")";


                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in insertion of credentials");
                    }
                }
                finally
                {
                    // DataList2.DataBind();
                    cmd.Parameters.Clear();
                    con.Close();
                    DataList2.DataBind();
                }
            }
            else if (e.CommandName == "cancel")
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

                }
                finally
                {

                    // DataList2.DataBind();
                    cmd.Parameters.Clear();
                    con.Close();
                    DataList2.DataBind();
                }

            }
            else if (e.CommandName == "disconnect")
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_connection WHERE (src_js_user_id=" + e.CommandArgument.ToString() + "AND dest_js_user_id=" + user_id + ") OR (dest_js_user_id=" + e.CommandArgument.ToString() + "AND src_js_user_id=" + user_id + ")";

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
                       // Response.Redirect("search.aspx");
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                    DataList2.DataBind();
                }
            }
        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "show_jp_profile")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_jp_company.aspx");
            }
        }

        protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            int user_id = (int)Session["user_id"];


            
            Button req_btn = e.Item.FindControl("btn_request") as Button;
            Button cancel_btn = e.Item.FindControl("btn_cancel") as Button;
            Button disconnect_btn = e.Item.FindControl("btn_disconnect") as Button;


            cancel_btn.Visible = false;
            req_btn.Visible = false;
            disconnect_btn.Visible = false;


            if ((int)Session["role"] == 1)
            {
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                int disconnect = 0;



                //for connected people
                cmd.CommandText =
                     "SELECT * FROM js_connection WHERE (src_js_user_id = " + disconnect_btn.CommandArgument.ToString() + "AND dest_js_user_id = " + user_id + ") OR (dest_js_user_id = " + disconnect_btn.CommandArgument.ToString() + "AND src_js_user_id = " + user_id + ")";
                    //"SELECT dest_js_user_id as user_id FROM js_connection WHERE src_js_user_id =" + user_id + ") UNION (SELECT src_js_user_id as user_id FROM js_connection WHERE dest_js_user_id =" + user_id + ")";
                try
                {

                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.HasRows)
                    {
                        req_btn.Visible = false;
                        cancel_btn.Visible = false;
                        disconnect_btn.Visible = true;
                        disconnect = 1;
                    }
                }
                finally
                {
                    cmd.Parameters.Clear();
                    con.Close();
                }

                if(disconnect == 0)
                {
                    disconnect_btn.Visible = false;

                    // for request send and cancel
                    cmd.CommandText = "SELECT * FROM request WHERE dest_user_id=" + req_btn.CommandArgument + "AND src_user_id=" + user_id;



                    try
                    {

                        con.Open();
                        SqlDataReader sdr = cmd.ExecuteReader();

                        if (sdr.HasRows)
                        {
                            req_btn.Visible = false;
                            cancel_btn.Visible = true;
                        }
                        else
                        {
                            req_btn.Visible = true;
                            cancel_btn.Visible = false;
                        }

                    }
                    finally
                    {
                        cmd.Parameters.Clear();
                        con.Close();
                    }

                }
                

              
            }
            else if ((int)Session["role"] == 2)
            {
                cancel_btn.Visible = false;
                req_btn.Visible = false;
                disconnect_btn.Visible = false;

            }
            

        }
    }
}