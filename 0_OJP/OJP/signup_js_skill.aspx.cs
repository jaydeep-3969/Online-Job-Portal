using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_skill : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_plus_skill_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            cmd.CommandText = "INSERT INTO js_skill (js_user_id,skill) VALUES (" + user_id + ",@skill)";

            cmd.Parameters.AddWithValue("@skill", tb_skill.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of skill details of js");
                }
                else
                {
                    Response.Redirect("signup_js_skill.aspx");
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

            cmd.CommandText = "INSERT INTO js_skill (js_user_id,skill) VALUES (" + user_id + ",@skill)";

            cmd.Parameters.AddWithValue("@skill", tb_skill.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of skill details of js");
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
    }
}