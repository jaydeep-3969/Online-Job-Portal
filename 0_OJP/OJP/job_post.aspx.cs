using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int user_id = (int)Session["user_id"];

            //int user_id = 17;
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "INSERT INTO jp_job (jp_user_id,designation,description,vacancy,age_min,age_max,salary_avg,exp_year,post_date,due_date,venue_desc,city,state) VALUES ("+user_id+",@designation,@desc,@vacancy,@age_min,@age_max,@salary,@exp,'"+DateTime.Today.ToShortDateString()+"',@due,@venue,@city,@state)";

            cmd.Parameters.AddWithValue("@designation",tb_designation.Text);
            cmd.Parameters.AddWithValue("@desc",tb_job_desc.Text);
            cmd.Parameters.AddWithValue("@vacancy",tb_vacancy.Text);
            cmd.Parameters.AddWithValue("@age_min",tb_min_age.Text);
            cmd.Parameters.AddWithValue("@age_max",tb_max_age.Text);
            cmd.Parameters.AddWithValue("@salary",tb_avg_salary.Text);
            cmd.Parameters.AddWithValue("@exp",tb_min_exp.Text);
            cmd.Parameters.AddWithValue("@due",cld_due_date.Text);
            cmd.Parameters.AddWithValue("@venue",tb_venue_desc.Text);
            cmd.Parameters.AddWithValue("@city",tb_city.Text);
            cmd.Parameters.AddWithValue("@state",tb_state.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of personal details of js");
                }

            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            Response.Redirect("posted_job.aspx");
        }
    }
}