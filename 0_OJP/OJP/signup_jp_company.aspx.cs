using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_company : System.Web.UI.Page
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

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int user_id = (int)Session["user_id"];

            String pro_pic_url = null;
            if (fu_profile_pic.HasFile)
            {
                string ext = System.IO.Path.GetExtension(fu_profile_pic.FileName);

                if (ext.ToLower() == ".png" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
                {
                    fu_profile_pic.SaveAs(Server.MapPath("~/ProfilePics/" + user_id + ext));
                    pro_pic_url = "ProfilePics/" + user_id + ext;
                }

            }

           
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            cmd.CommandText = "INSERT INTO jp_master (jp_user_id,company_name,industry,size_in_emp,description,website_url,founded_on_year,street,landmark,city,state,pincode,profile_photo_url) VALUES (" + user_id + ",@cmp_nm,@industry,@size,@desc,@website,@founded_year,@street,@landmark,@city,@state,@pincode,'"+pro_pic_url+"')";


            cmd.Parameters.AddWithValue("@cmp_nm", tb_cmp_name.Text);
            cmd.Parameters.AddWithValue("@industry", tb_industry.Text);
            cmd.Parameters.AddWithValue("@size", tb_size.Text);
            cmd.Parameters.AddWithValue("@desc", tb_description.Text);
            cmd.Parameters.AddWithValue("@website", tb_website.Text);
           // cmd.Parameters.AddWithValue("@about", tb_about_us.Text);
            cmd.Parameters.AddWithValue("@founded_year", tb_founded_on.Text);
            cmd.Parameters.AddWithValue("@street", tb_street.Text);
            cmd.Parameters.AddWithValue("@landmark", tb_landmark.Text);
            cmd.Parameters.AddWithValue("@city", tb_city.Text);
            cmd.Parameters.AddWithValue("@state", tb_state.Text);
            cmd.Parameters.AddWithValue("@pincode", tb_pincode.Text);
            
           // cmd.Parameters.AddWithValue("@startup", rblist_startup.SelectedValue);

            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of other details of jp");
                }
                else { Response.Redirect("signup_jp_contact_person.aspx"); }
            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }
        }
    }
}