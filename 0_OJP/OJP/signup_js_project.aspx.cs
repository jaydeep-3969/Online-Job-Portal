using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_project : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_plus_project_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            cmd.CommandText = "INSERT INTO js_project (js_user_id,title,description,team_size,role,duration) VALUES (" + user_id + ",@title,@desc,@size,@role,@duration)";

            cmd.Parameters.AddWithValue("@title", tb_title.Text);
            cmd.Parameters.AddWithValue("@desc", tb_desc.Text);
            cmd.Parameters.AddWithValue("@size", tb_team_size.Text);
            cmd.Parameters.AddWithValue("@role", tb_role.Text);
            cmd.Parameters.AddWithValue("@duration", tb_duration.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of projrct details of js");
                }
                else
                {
                    Response.Redirect("signup_js_project.aspx");
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            cmd.CommandText = "INSERT INTO js_project (js_user_id,title,description,team_size,role,duration) VALUES (" + user_id + ",@title,@desc,@size,@role,@duration)";

            cmd.Parameters.AddWithValue("@title", tb_title.Text);
            cmd.Parameters.AddWithValue("@desc", tb_desc.Text);
            cmd.Parameters.AddWithValue("@size", tb_team_size.Text);
            cmd.Parameters.AddWithValue("@role", tb_role.Text);
            cmd.Parameters.AddWithValue("@duration", tb_duration.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of projrct details of js");
                }
                else
                {
                    Response.Redirect("signup_js_activity.aspx");
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