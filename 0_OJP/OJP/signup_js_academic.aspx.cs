using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_academic : System.Web.UI.Page
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

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int user_id = (int)Session["user_id"];
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "INSERT INTO js_academic (js_user_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year) VALUES (" + user_id + ",@inst_nm,@degree,@percent,@mark,@pr,@branch,@pass_year)";

            cmd.Parameters.AddWithValue("@inst_nm", tb_institute_academic.Text);
            cmd.Parameters.AddWithValue("@degree", tb_degree.Text);
            cmd.Parameters.AddWithValue("@percent", rblist_mark_type.SelectedValue);
            cmd.Parameters.AddWithValue("@mark", tb_mark.Text);
            cmd.Parameters.AddWithValue("@pr", tb_pr.Text);
            cmd.Parameters.AddWithValue("@branch", tb_branch.Text);
            cmd.Parameters.AddWithValue("@pass_year", tb_passing_year.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of academic details of js");
                }
                else
                {
                    Response.Redirect("signup_js_skill.aspx");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }
        }

        protected void btn_plus_activity_Click(object sender, EventArgs e)
        {
            int user_id = (int)Session["user_id"];
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "INSERT INTO js_academic (js_user_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year) VALUES (" + user_id + ",@inst_nm,@degree,@percent,@mark,@pr,@branch,@pass_year)";

            cmd.Parameters.AddWithValue("@inst_nm", tb_institute_academic.Text);
            cmd.Parameters.AddWithValue("@degree", tb_degree.Text);
            cmd.Parameters.AddWithValue("@percent", rblist_mark_type.SelectedValue);
            cmd.Parameters.AddWithValue("@mark", tb_mark.Text);
            cmd.Parameters.AddWithValue("@pr", tb_pr.Text);
            cmd.Parameters.AddWithValue("@branch", tb_branch.Text);
            cmd.Parameters.AddWithValue("@pass_year", tb_passing_year.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of academic details of js");
                }
                else
                {
                    Response.Redirect("signup_js_academic.aspx");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }
        }
    }
}