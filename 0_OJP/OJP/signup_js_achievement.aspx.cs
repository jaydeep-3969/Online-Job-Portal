using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_achievement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_plus_activity_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            //INSERIOTN OF ACADEMIC ACHIEVEMENTS

            cmd.CommandText = "INSERT INTO js_achievement (js_user_id,achieved) VALUES (" + user_id + ",@achievement)";

            cmd.Parameters.AddWithValue("@achievement", tb_achievement_academic.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of academic achievements details of js");
                }
                else
                {
                    Response.Redirect("signup_js_achievement.aspx");
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

            //INSERIOTN OF ACADEMIC ACHIEVEMENTS

            cmd.CommandText = "INSERT INTO js_achievement (js_user_id,achieved) VALUES (" + user_id + ",@achievement)";

            cmd.Parameters.AddWithValue("@achievement", tb_achievement_academic.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of academic achievements details of js");
                }
                else
                {
                    Response.Redirect("signup_js_experience.aspx");
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