using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "SELECT user_id FROM credential WHERE username=@unm AND que=@sec AND ans=@ans";
            cmd.Parameters.AddWithValue("@unm", tb_username.Text);
            cmd.Parameters.AddWithValue("@sec", tb_sec.Text);
            cmd.Parameters.AddWithValue("@ans",tb_ans.Text);

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {

                if (sdr.HasRows)
                {
                    sdr.Read();
                    Session["user_id"] = sdr["user_id"];
                    Session["reset_pswd"] = 1;
                    Response.Redirect("reset_password.aspx");
                }
                else
                {
                    lbl_error.Text=("Invalid Details");
                  //  Response.Write("Invalid Details");
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