using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_experience : System.Web.UI.Page
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
            //int user_id = 85;
            //INSERTION OF EXPERIENCE

            int exp_yr = 0;
            //DateTime init = new DateTime(0001, 01, 01);
            if (Convert.ToInt32(rblist_is_working.SelectedValue) == 0)
            {
                exp_yr = CalculateYr(Convert.ToDateTime(cld_exp_to.Text), Convert.ToDateTime(cld_exp_from.Text));
            }
            else
            {
                exp_yr = CalculateYr(DateTime.Now, Convert.ToDateTime(cld_exp_from.Text));
            }

            cmd.CommandText = "INSERT INTO js_experience (js_user_id,institute_name,designation,is_working,exp_from,exp_to,achievement,year_exp) VALUES (" + user_id + ",@inst_nm,@designation,@is_work,@from,@to,@achieve," + exp_yr + ")";


            cmd.Parameters.AddWithValue("@inst_nm", tb_institute_company.Text);
            cmd.Parameters.AddWithValue("@designation", tb_designation.Text);
            cmd.Parameters.AddWithValue("@is_work", rblist_is_working.SelectedValue);
            cmd.Parameters.AddWithValue("@from", cld_exp_from.Text);
            cmd.Parameters.AddWithValue("@to", cld_exp_to.Text);
            cmd.Parameters.AddWithValue("@achieve", tb_achievement_work.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of experience details of js");
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

       /* protected void btn_submit_Click(object sender, EventArgs e)
        {
            


        }*/

        public int CalculateYr(DateTime date1, DateTime date2)
        {
            int yr = 0;
            yr = date1.Year - date2.Year;
            if (date1.DayOfYear < date2.DayOfYear)
                yr = yr - 1;

            return yr;
        }

        protected void rblist_is_working_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblist_is_working.SelectedValue == "1" && cld_exp_to.Enabled == true)
            {
                cld_exp_to.Enabled = false;
            }


            if (rblist_is_working.SelectedValue == "0" && cld_exp_to.Enabled == false)
            {
                cld_exp_to.Enabled = true;
            }
        }

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];
            //int user_id = 85;
            //INSERTION OF EXPERIENCE

            int exp_yr = 0;
            //DateTime init = new DateTime(0001, 01, 01);
            if (Convert.ToInt32(rblist_is_working.SelectedValue) == 0)
            {
                exp_yr = CalculateYr(Convert.ToDateTime(cld_exp_to.Text), Convert.ToDateTime(cld_exp_from.Text));
            }
            else
            {
                exp_yr = CalculateYr(DateTime.Now, Convert.ToDateTime(cld_exp_from.Text));
            }

            cmd.CommandText = "INSERT INTO js_experience (js_user_id,institute_name,designation,is_working,exp_from,exp_to,achievement,year_exp) VALUES (" + user_id + ",@inst_nm,@designation,@is_work,@from,@to,@achieve," + exp_yr + ")";


            cmd.Parameters.AddWithValue("@inst_nm", tb_institute_company.Text);
            cmd.Parameters.AddWithValue("@designation", tb_designation.Text);
            cmd.Parameters.AddWithValue("@is_work", rblist_is_working.SelectedValue);
            cmd.Parameters.AddWithValue("@from", cld_exp_from.Text);
            cmd.Parameters.AddWithValue("@to", cld_exp_to.Text);
            cmd.Parameters.AddWithValue("@achieve", tb_achievement_work.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of experience details of js");
                }
                else
                {
                    Response.Redirect("signup_js_preferences.aspx");
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