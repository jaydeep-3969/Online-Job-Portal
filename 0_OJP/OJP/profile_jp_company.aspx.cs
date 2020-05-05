using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_jp_company : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

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
            
            //Session["user_id"] = 17; // tentative user id
        }


        protected void dl_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int user_id = (int)Session["user_id"];
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
                string company_name = ((TextBox)record.FindControl("tb_company")).Text;
                string description = ((TextBox)record.FindControl("tb_desc")).Text;
                string industry = ((TextBox)record.FindControl("tb_industry")).Text;
                string street = ((TextBox)record.FindControl("tb_street")).Text;

                string landmark = ((TextBox)record.FindControl("tb_landmark")).Text;
                string city = ((TextBox)record.FindControl("tb_city")).Text;
                string website_url = ((TextBox)record.FindControl("tb_website")).Text;
                string founded_on_year = ((TextBox)record.FindControl("tb_found")).Text;
                string mobile_no = ((TextBox)record.FindControl("tb_mobile")).Text;
                string size_in_emp = ((TextBox)record.FindControl("tb_size")).Text;
                string pincode = ((TextBox)record.FindControl("tb_pincode")).Text;
                string state = ((TextBox)record.FindControl("tb_state")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE jp_master SET company_name=@company_name, " +
                    "description=@description, industry=@industry, street=@street," +
                    "landmark=@landmark, city=@city ," +
                    " website_url=@website_url, founded_on_year =@founded_on_year, " +
                    "mobile_no=@mobile_no, size_in_emp=@size_in_emp, pincode=@pincode, state=@state"
                    +" WHERE jp_user_id = "+ user_id;


                cmd.Parameters.AddWithValue("company_name", company_name);
                cmd.Parameters.AddWithValue("description", description);
                cmd.Parameters.AddWithValue("industry", industry);
                cmd.Parameters.AddWithValue("street", street);
                cmd.Parameters.AddWithValue("landmark", landmark);
                cmd.Parameters.AddWithValue("city", city);
                cmd.Parameters.AddWithValue("website_url", website_url);
                cmd.Parameters.AddWithValue("founded_on_year", founded_on_year);
                cmd.Parameters.AddWithValue("mobile_no", mobile_no);
                cmd.Parameters.AddWithValue("size_in_emp", size_in_emp);
                cmd.Parameters.AddWithValue("pincode", pincode);
                cmd.Parameters.AddWithValue("state", state);



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

        protected void dl_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label mode = e.Item.FindControl("lbl_mode") as Label;
            if (mode.Text == "item")
            {

                Button pnl_btn = e.Item.FindControl("btn_edit") as Button;

                if (Session["sent_user_id"] != null && (int)Session["sent_user_id"] != (int)Session["user_id"])
                {
                    //other person
                    pnl_btn.Visible = false;

                }
                else
                {
                    pnl_btn.Visible = true;
                }
            }
           
        }
    }
}