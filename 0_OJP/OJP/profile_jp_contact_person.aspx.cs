using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_jp_contact_person : System.Web.UI.Page
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

        }

        protected void dl_ItemCommand(object source, DataListCommandEventArgs e)
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
                string mobile_no = ((TextBox)record.FindControl("tb_mobile")).Text;
                string name = ((TextBox)record.FindControl("tb_name")).Text;
                string email = ((TextBox)record.FindControl("tb_email")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE jp_master SET contact_person=@nm, mobile_no= @mobile, email =@email WHERE jp_user_id = @user_id";


                cmd.Parameters.AddWithValue("@nm", name);
                cmd.Parameters.AddWithValue("@mobile", mobile_no);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
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