using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class signup_js_personal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int user_id = (int)Session["user_id"];

            string pro_pic_url = null;
            if (fu_profile_js.HasFile)
            {
                string ext = System.IO.Path.GetExtension(fu_profile_js.FileName);

                if (ext.ToLower() == ".png" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
                {
                    fu_profile_js.SaveAs(Server.MapPath("~/ProfilePics/" + user_id + ext));
                    pro_pic_url = "ProfilePics/" + user_id + ext;
                }

            }


            int age = CalculateYr(DateTime.Now, Convert.ToDateTime(cld_dob.Text));

            cmd.CommandText = "INSERT INTO js_master (js_user_id,fname,mname,lname,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,dob,age,profile_photo_url)" +
                               "VALUES (" + user_id + ",@fnm,@mnm,@lnm,@mob,@email,@gender,@city,@state,@pincode,@street,@landmark,@fresher,@dob," + age + ",'"+pro_pic_url+"')";

            cmd.Parameters.AddWithValue("@fnm", tb_first.Text);
            cmd.Parameters.AddWithValue("@mnm", tb_middle.Text);
            cmd.Parameters.AddWithValue("@lnm", tb_last.Text);
            cmd.Parameters.AddWithValue("@mob", tb_mobile.Text);
            cmd.Parameters.AddWithValue("@email", tb_email.Text);
            cmd.Parameters.AddWithValue("@gender", rdlist_gender.SelectedValue);
            cmd.Parameters.AddWithValue("@city", tb_city.Text);
            cmd.Parameters.AddWithValue("@state", tb_state.Text);
            cmd.Parameters.AddWithValue("@pincode", tb_pincode.Text);
            cmd.Parameters.AddWithValue("@street", tb_street.Text);
            cmd.Parameters.AddWithValue("@landmark", tb_landmark.Text);
            cmd.Parameters.AddWithValue("@fresher", rblist_status.SelectedValue);
            cmd.Parameters.AddWithValue("@dob", cld_dob.Text);





            try
            {
                con.Open();
                int flag = cmd.ExecuteNonQuery();

                if (flag == 0)
                {
                    Response.Write("Error in insertion of personal details of js");
                }
                else
                {

                    Response.Redirect("signup_js_academic.aspx");
                }

            }
            finally
            {
                cmd.Parameters.Clear();
                con.Close();
            }


           
        }

        public int CalculateYr(DateTime date1, DateTime date2)
        {
            int yr = 0;
            yr = date1.Year - date2.Year;
            if (date1.DayOfYear < date2.DayOfYear)
                yr = yr - 1;

            return yr;
        }

        protected void rblist_status_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cld_birthdate_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > System.DateTime.Today)
            {
                // Disable date
                e.Day.IsSelectable = false;
                // Change color of disabled date
                e.Cell.ForeColor = Color.Gray;
            }
        }
    }
}