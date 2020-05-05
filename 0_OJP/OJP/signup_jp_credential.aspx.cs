using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
            if (Convert.ToInt32(Request.QueryString["msg"]) == 1)
            {
                lbl_error.Text = "username has been already taken";
            }
        }

      

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            //for checking username already available or not
            cmd.CommandText = "SELECT * FROM credential WHERE username=@unm";

            cmd.Parameters.AddWithValue("@unm", tb_username.Text);


            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {
                if (sdr.HasRows)
                {
                    Response.Redirect("signup_jp_credential.aspx?msg=1");
                }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


            //insertion of new user
            cmd.CommandText = "INSERT INTO credential (username,password,que,ans,role_id) VALUES (@unm,@pswd,@que,@ans,2)";

            cmd.Parameters.AddWithValue("@unm", tb_username.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_password.Text);
            cmd.Parameters.AddWithValue("@que", tb_que.Text);
            cmd.Parameters.AddWithValue("@ans", tb_ans.Text);
            //cmd.Parameters.AddWithValue("",);

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
                cmd.Parameters.Clear();
                con.Close();
            }


            cmd.CommandText = "SELECT user_id FROM credential WHERE username=@unm AND password=@pswd";
            cmd.Parameters.AddWithValue("@unm", tb_username.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_password.Text);

            con.Open();
            sdr = cmd.ExecuteReader();
            int user_id;


            sdr.Read();
            user_id = (int)sdr["user_id"];
            cmd.Parameters.Clear();
            con.Close();

            Session["user_id"] = user_id;
            Session["signup"] = 1;

            Response.Redirect("signup_jp_company.aspx");
        }

        

    }
}
