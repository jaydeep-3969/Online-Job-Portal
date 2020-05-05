using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "INSERT INTO credential (username,password,que,ans,role_id) VALUES (@unm,@pswd,@que,@ans,2)";

            cmd.Parameters.AddWithValue("@unm", tb_unm.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_pswd.Text);
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
            cmd.Parameters.AddWithValue("@unm", tb_unm.Text);
            cmd.Parameters.AddWithValue("@pswd", tb_pswd.Text);

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            int user_id;


            sdr.Read();
            user_id = (int)sdr["user_id"];
            cmd.Parameters.Clear();
            con.Close();



            //string pro_pic_url = null;
          /* if (fu_profile_pic.HasFile)
            {
                string ext = System.IO.Path.GetExtension(fu_profile_pic.FileName);

                if(ext.ToLower() == ".png" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
                {
                    fu_profile_pic.SaveAs(Server.MapPath("~/ProfilePics/" + user_id + ext));
                    pro_pic_url = "ProfilePics/"+user_id+ext;
                }
               
            }

         */
            cmd.CommandText = "INSERT INTO jp_master (jp_user_id,company_name,industry,size_in_emp,description,website_url,about_us,founded_on_year,street,landmark,city,state,pincode,contact_person,mobile_no,email,is_startup) VALUES ("+ user_id + ",@cmp_nm,@industry,@size,@desc,@website,@about,@founded_year,@street,@landmark,@city,@state,@pincode,@contact_person,@mobile,@email,@startup)";
                                         

            cmd.Parameters.AddWithValue("@cmp_nm", tb_cmp_name.Text);
            cmd.Parameters.AddWithValue("@industry", tb_description.Text);
            cmd.Parameters.AddWithValue("@size", tb_size.Text);
            cmd.Parameters.AddWithValue("@desc", tb_description.Text);
            cmd.Parameters.AddWithValue("@website", tb_website.Text);
            cmd.Parameters.AddWithValue("@about", tb_about_us.Text);
            cmd.Parameters.AddWithValue("@founded_year", tb_founded_on.Text);
            cmd.Parameters.AddWithValue("@street", tb_street.Text);
            cmd.Parameters.AddWithValue("@landmark", tb_landmark.Text);
            cmd.Parameters.AddWithValue("@city", tb_city.Text);
            cmd.Parameters.AddWithValue("@state", tb_state.Text);
            cmd.Parameters.AddWithValue("@pincode", tb_pincode.Text);
            cmd.Parameters.AddWithValue("@contact_person", tb_name.Text);
            cmd.Parameters.AddWithValue("@mobile", tb_mob_no.Text);
            cmd.Parameters.AddWithValue("@email", tb_email.Text);
            cmd.Parameters.AddWithValue("@startup", rblist_startup.SelectedValue);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of other details of jp");
                }
                else { Response.Redirect("login.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }

        }
    }


}