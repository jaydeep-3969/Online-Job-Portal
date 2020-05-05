using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_contact_person : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            // Session["user_id"] = 102;
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            cmd.CommandText = "UPDATE jp_master SET contact_person = @cp ,mobile_no = @mob,email = @email WHERE jp_user_id = " + user_id;

            cmd.Parameters.AddWithValue("@cp",tb_name.Text);
            cmd.Parameters.AddWithValue("@email",tb_email.Text);
            cmd.Parameters.AddWithValue("@mob",tb_mob_no.Text);


            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of contact person details");
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