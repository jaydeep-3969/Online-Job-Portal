using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session["user_id"] = 35;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (Session["sent_user_id"] != null && (int)Session["sent_user_id"] != (int)Session["user_id"])
            {
                //other person
                lbl_user_id.Text = ((int)Session["sent_user_id"]).ToString();

            }
            else
            {
                lbl_user_id.Text = ((int)Session["user_id"]).ToString();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "edit")
            {
                dl.EditItemIndex = e.Item.ItemIndex;
                dl.DataBind();

            }
            
            else if (e.CommandName == "cancel")
            {
                dl.EditItemIndex = -1;
                dl.DataBind();
            }
            else if (e.CommandName == "update")
            {

                DataListItem record = e.Item;

              

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                string pro_pic_url = "ProfilePics/" + (int)Session["user_id"] + ".png";// ((Label)record.FindControl("lbl_pro_pic_url")).Text;
                if (((FileUpload)record.FindControl("fu_profile_js")).HasFile)
                {
                    string ext = System.IO.Path.GetExtension(((FileUpload)record.FindControl("fu_profile_js")).FileName);

                    if (ext.ToLower() == ".png" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
                    {
                        //pro_pic_url = "ProfilePics/" + (int)Session["user_id"] + ext;
                        File.Delete(Server.MapPath("~/ProfilePics/" + (int)Session["user_id"] + ext));
                        ((FileUpload)record.FindControl("fu_profile_js")).SaveAs(Server.MapPath("~/ProfilePics/" + (int)Session["user_id"] + ext));
                        pro_pic_url = "ProfilePics/" + (int)Session["user_id"] + ext;
                    }

                }

                int age = CalculateYr(DateTime.Now, Convert.ToDateTime(((TextBox)record.FindControl("cld_birthdate")).Text));
               // int age = CalculateYr(DateTime.Now, ((Calendar)record.FindControl("cld_birthdate")).SelectedDate);

                cmd.CommandText = "UPDATE js_master SET fname=@fnm,mname=@mnm,lname=@lnm,gender=@gender,mobile_no=@mob,email=@email,city=@city,state=@state,street=@street,landmark=@landmark,pincode=@pincode,dob=@dob,is_fresher=@fresher,age="+age+",profile_photo_url='"+pro_pic_url+"' WHERE js_user_id="+(int)Session["user_id"];


                cmd.Parameters.AddWithValue("@fnm", ((TextBox)record.FindControl("tb_fname")).Text);
                cmd.Parameters.AddWithValue("@mnm", ((TextBox)record.FindControl("tb_mname")).Text);
                cmd.Parameters.AddWithValue("@lnm", ((TextBox)record.FindControl("tb_lname")).Text);
                cmd.Parameters.AddWithValue("@mob", ((TextBox)record.FindControl("tb_mob")).Text);
                cmd.Parameters.AddWithValue("@email", ((TextBox)record.FindControl("tb_email")).Text);
                cmd.Parameters.AddWithValue("@gender", ((RadioButtonList)record.FindControl("rblist_gender")).SelectedValue);
                cmd.Parameters.AddWithValue("@city", ((TextBox)record.FindControl("tb_city")).Text);
                cmd.Parameters.AddWithValue("@state", ((TextBox)record.FindControl("tb_state")).Text);
                cmd.Parameters.AddWithValue("@pincode", ((TextBox)record.FindControl("tb_pincode")).Text);
                cmd.Parameters.AddWithValue("@street", ((TextBox)record.FindControl("tb_street")).Text);
                cmd.Parameters.AddWithValue("@landmark", ((TextBox)record.FindControl("tb_landmark")).Text);
                cmd.Parameters.AddWithValue("@fresher", ((RadioButtonList)record.FindControl("rblist_status")).SelectedValue);
                cmd.Parameters.AddWithValue("@dob", ((TextBox)record.FindControl("cld_birthdate")).Text);





                try
                {
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();

                    if (flag == 0)
                    {
                        Response.Write("Error in insertion of credentials");
                    }
                    else
                    {
                        //Response.Redirect("profile_js_personal.aspx");
                    }
                }
                finally
                {

                    cmd.Parameters.Clear();
                    con.Close();

                   /* Random r = new Random();
                    int random_no = r.Next();
                    Response.Redirect(Request.RawUrl.ToString()+"?r="+random_no.ToString());
                    */
                }

                dl.EditItemIndex = -1;
                dl.DataBind();





                //cmd.CommandText = "INSERT INTO js_reference (name,designation,institute_name,mobile_no,email) VALUES (@nm,@des,@institute,@mob,@mail)";

                //cmd.Parameters.AddWithValue("@nm",);
                //cmd.Parameters.AddWithValue("@des", );
                //cmd.Parameters.AddWithValue("@institute", tb_que.Text);
                //cmd.Parameters.AddWithValue("@mob", tb_ans.Text);
                //cmd.Parameters.AddWithValue("@mail",);

                //try
                //{
                //    con.Open();
                //    int flag = cmd.ExecuteNonQuery();

                //    if (flag == 0)
                //    {
                //        Response.Write("Error in insertion of credentials");
                //    }
                //}
                //finally
                //{
                //    cmd.Parameters.Clear();
                //    con.Close();
                //}

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

        protected void dl_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label mode = e.Item.FindControl("lbl_mode") as Label;
            if (mode.Text == "item")
            {

                Button pnl_btn = e.Item.FindControl("btn_edit") as Button;
                Image pro_pic = e.Item.FindControl("Image1") as Image;

                if (Session["sent_user_id"] != null && (int)Session["sent_user_id"] != (int)Session["user_id"])
                {
                    //other person
                    pnl_btn.Visible = false;

                }
                else
                {
                    /*
                    SqlConnection con = (SqlConnection)Application["con"];
                    SqlCommand cmd = (SqlCommand)Application["cmd"];

                    cmd.CommandText = "SELECT * FROM js_master WHERE js_user_id = " + Session["user_id"];

                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    try
                    {

                        if (sdr.HasRows)
                        {
                            sdr.Read();
                            pro_pic.ImageUrl = (string)sdr["profile_photo_url"];
                        }
                    }
                    finally
                    {
                        cmd.Parameters.Clear();
                        con.Close();
                    }
                    */
                    pnl_btn.Visible = true;
                }
            }

        }
    }
}