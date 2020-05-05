using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];


            //INSERTION OF CREDENTIALS
            cmd.CommandText = "INSERT INTO credential (username,password,que,ans,role_id) VALUES (@unm,@pswd,@que,@ans,1)";

            cmd.Parameters.AddWithValue("@unm", tb_username.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_password.Text);
            cmd.Parameters.AddWithValue("@que", tb_que.Text);
            cmd.Parameters.AddWithValue("@ans", tb_ans.Text);

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

            //GETTING USER ID
            cmd.CommandText = "SELECT user_id FROM credential WHERE username=@unm AND password=@pswd";
            cmd.Parameters.AddWithValue("@unm", tb_username.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_password.Text);

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            int user_id;


            sdr.Read();
            user_id = (int)sdr["user_id"];
            cmd.Parameters.Clear();
            con.Close();

            //int user_id = 37;

            //INSERTION OF PERSONAL INFO
            int age = CalculateYr(DateTime.Now,cld_birthdate.SelectedDate);

            cmd.CommandText = "INSERT INTO js_master (js_user_id,fname,mname,lname,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,dob,age)" +
                               "VALUES ("+user_id+",@fnm,@mnm,@lnm,@mob,@email,@gender,@city,@state,@pincode,@street,@landmark,@fresher,@dob,"+age+")";

            cmd.Parameters.AddWithValue("@fnm",tb_first.Text);
            cmd.Parameters.AddWithValue("@mnm",tb_middle.Text);
            cmd.Parameters.AddWithValue("@lnm",tb_last.Text);
            cmd.Parameters.AddWithValue("@mob",tb_mobile.Text);
            cmd.Parameters.AddWithValue("@email",tb_email.Text);
            cmd.Parameters.AddWithValue("@gender",rdlist_gender.SelectedValue);
            cmd.Parameters.AddWithValue("@city",tb_city.Text);
            cmd.Parameters.AddWithValue("@state",tb_state.Text);
            cmd.Parameters.AddWithValue("@pincode",tb_pincode.Text);
            cmd.Parameters.AddWithValue("@street",tb_street.Text);
            cmd.Parameters.AddWithValue("@landmark",tb_landmark.Text);
            cmd.Parameters.AddWithValue("@fresher",rblist_status.SelectedValue);
            cmd.Parameters.AddWithValue("@dob",cld_birthdate.SelectedDate.ToShortDateString());


            

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

            
            //INSERTION OF ACADEMIC DETAILS
            cmd.CommandText = "INSERT INTO js_academic (js_user_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year) VALUES ("+user_id+",@inst_nm,@degree,@percent,@mark,@pr,@branch,@pass_year)";

            cmd.Parameters.AddWithValue("@inst_nm",tb_institute_academic.Text);
            cmd.Parameters.AddWithValue("@degree",tb_degree.Text);
            cmd.Parameters.AddWithValue("@percent",rblist_mark_type.SelectedValue);
            cmd.Parameters.AddWithValue("@mark",tb_mark.Text);
            cmd.Parameters.AddWithValue("@pr",tb_pr.Text);
            cmd.Parameters.AddWithValue("@branch",tb_branch.Text);
            cmd.Parameters.AddWithValue("@pass_year",tb_passing_year.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of academic details of js");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            //INSERTION OF PROJECT DETAILS

            cmd.CommandText = "INSERT INTO js_project (js_user_id,title,description,team_size,role,duration) VALUES ("+ user_id + ",@title,@desc,@size,@role,@duration)";

            cmd.Parameters.AddWithValue("@title",tb_title.Text);
            cmd.Parameters.AddWithValue("@desc",tb_desc.Text);
            cmd.Parameters.AddWithValue("@size",tb_team_size.Text);
            cmd.Parameters.AddWithValue("@role",tb_role.Text);
            cmd.Parameters.AddWithValue("@duration",tb_duration.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of projrct details of js");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


            //INSERTION OF SKILLS

            cmd.CommandText = "INSERT INTO js_skill (js_user_id,skill) VALUES ("+user_id+",@skill)";

            cmd.Parameters.AddWithValue("@skill", tb_skill.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of skill details of js");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


            //INSERIOTN OF ACTIVITY

            cmd.CommandText = "INSERT INTO js_activity (js_user_id,activity) VALUES (" + user_id + ",@activity)";

            cmd.Parameters.AddWithValue("@activity", tb_activity.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of activity details of js");
                }
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

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
                //else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


            //int user_id = 52;
            //INSERTION OF EXPERIENCE

            int exp_yr = 0;
            DateTime init = new DateTime(0001, 01, 01);
            if (DateTime.Compare(init, cld_exp_to.SelectedDate) != 0)
            {
                exp_yr = CalculateYr(cld_exp_to.SelectedDate, cld_exp_from.SelectedDate);
            }
            else
            {
                exp_yr = CalculateYr(DateTime.Now, cld_exp_from.SelectedDate);
            }

            cmd.CommandText = "INSERT INTO js_experience (js_user_id,institute_name,designation,is_working,exp_from,exp_to,achievement,year_exp) VALUES ("+user_id+",@inst_nm,@designation,@is_work,@from,@to,@achieve,"+exp_yr+")";


            cmd.Parameters.AddWithValue("@inst_nm",tb_institute_company.Text);
            cmd.Parameters.AddWithValue("@designation",tb_designation.Text);
            cmd.Parameters.AddWithValue("@is_work",rblist_is_working.SelectedValue);
            cmd.Parameters.AddWithValue("@from",cld_exp_from.SelectedDate.ToShortDateString());
            cmd.Parameters.AddWithValue("@to", cld_exp_to.SelectedDate.ToShortDateString());
            cmd.Parameters.AddWithValue("@achieve",tb_achievement_work.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of experience details of js");
                }
               // else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

            
            //INSERTION OF PREFERENCES
            //int user_id = 52;

            cmd.CommandText = "INSERT INTO js_preferences (js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,startup,min_size_in_emp) VALUES (" + user_id+",@ind1,@ind2,@ind3,@loc1,@loc2,@loc3,@desg1,@desg2,@desg3,@min_sal,@startup,@size)";

            cmd.Parameters.AddWithValue("@ind1", dd_ind1.SelectedValue);
            cmd.Parameters.AddWithValue("@ind2", dd_ind2.SelectedValue);
            cmd.Parameters.AddWithValue("@ind3",dd_ind3.SelectedValue);
            cmd.Parameters.AddWithValue("@loc1", dd_loc1.SelectedValue);
            cmd.Parameters.AddWithValue("@loc2", dd_loc2.SelectedValue);
            cmd.Parameters.AddWithValue("@loc3", dd_loc3.SelectedValue);
            cmd.Parameters.AddWithValue("@desg1", dd_des1.SelectedValue);
            cmd.Parameters.AddWithValue("@desg2", dd_des2.SelectedValue);
            cmd.Parameters.AddWithValue("@desg3",dd_des3.SelectedValue);
            cmd.Parameters.AddWithValue("@min_sal",tb_min_salary.Text);
            cmd.Parameters.AddWithValue("@startup",rblist_startup.SelectedValue);
            cmd.Parameters.AddWithValue("@size", tb_size_emp.Text);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of preferences details of js");
                }
                else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }
            
        }

        protected void rblist_is_working_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rblist_is_working.SelectedValue == "1" && cld_exp_to.Enabled == true)
            {
                cld_exp_to.Enabled = false;
            }


            if(rblist_is_working.SelectedValue == "0" && cld_exp_to.Enabled == false)
            {
                cld_exp_to.Enabled = true;
            }
        }

        public int CalculateYr(DateTime date1,DateTime date2)
        {
            int yr = 0;
            yr = date1.Year - date2.Year;
            if (date1.DayOfYear < date2.DayOfYear)
                yr = yr - 1;

            return yr;
        }

        
    }
}