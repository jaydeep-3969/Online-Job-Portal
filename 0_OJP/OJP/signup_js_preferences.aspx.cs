using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_preferences : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
            // Session["user_id"] = 84;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];


            cmd.CommandText = "INSERT INTO js_preferences (js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,min_size_in_emp) VALUES (" + user_id + ",@ind1,@ind2,@ind3,@loc1,@loc2,@loc3,@desg1,@desg2,@desg3,@min_sal,@size)";

            cmd.Parameters.AddWithValue("@ind1", dd_ind1.SelectedValue);
            cmd.Parameters.AddWithValue("@ind2", dd_ind2.SelectedValue);
            cmd.Parameters.AddWithValue("@ind3", dd_ind3.SelectedValue);
            cmd.Parameters.AddWithValue("@loc1", dd_loc1.SelectedValue);
            cmd.Parameters.AddWithValue("@loc2", dd_loc2.SelectedValue);
            cmd.Parameters.AddWithValue("@loc3", dd_loc3.SelectedValue);
            cmd.Parameters.AddWithValue("@desg1", dd_des1.SelectedValue);
            cmd.Parameters.AddWithValue("@desg2", dd_des2.SelectedValue);
            cmd.Parameters.AddWithValue("@desg3", dd_des3.SelectedValue);
            cmd.Parameters.AddWithValue("@min_sal", tb_min_salary.Text);
           // cmd.Parameters.AddWithValue("@startup", rblist_startup.SelectedValue);
            cmd.Parameters.AddWithValue("@size", tb_size_emp.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of preferences details of js");
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