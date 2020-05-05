using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm16 : System.Web.UI.Page
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

        protected void tb_submit_Click(object sender, EventArgs e)
        {
            int user_id = (int)Session["user_id"];

            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "UPDATE credential SET password = @pswd WHERE user_id="+user_id;

            cmd.Parameters.AddWithValue("@pswd",tb_cnf_password.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in updation of password");
                }
                else
                {
                    Session.Clear();
                    Session.Abandon();
                    Response.Redirect("login.aspx");
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