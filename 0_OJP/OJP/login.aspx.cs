using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
           Session.Clear();
           // Session.Abandon();
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
             
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "SELECT * FROM credential WHERE BINARY_CHECKSUM(username)=BINARY_CHECKSUM(@usernm) and BINARY_CHECKSUM(password)=BINARY_CHECKSUM(@pswd)";
            cmd.Parameters.AddWithValue("@usernm", tb_username.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_password.Text);

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {

                if (sdr.HasRows)
                {
                    sdr.Read();
                    Session["user_id"] = sdr["user_id"];

                    if ((int)sdr["role_id"] == 1)
                    {
                        Session["role"] = 1;
                        Response.Redirect("job_recommended.aspx");
                    }
                    else if ((int)sdr["role_id"] == 2)
                    {
                        Session["role"] = 2;
                        Response.Redirect("posted_job.aspx");
                    }
                    else if ((int)sdr["role_id"] == 3)
                    {
                        Session["role"] = 3;
                        Response.Redirect("admin_home.aspx");
                    }

                }
                else
                {
                    lbl_error.Text = "Invalid Credentials";
                }

            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


        }

        protected void btn_js_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_js_credential.aspx");
        }

        protected void btn_jp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_jp_credential.aspx");
        }
    }
}