using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_js_achievement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            //Session["user_id"] = 82; // tentative user id
            if (Session["sent_user_id"] != null && (int)Session["sent_user_id"] != (int)Session["user_id"])
            {
                //other person
                lbl_user_id.Text = ((int)Session["sent_user_id"]).ToString();
                dl.ShowFooter = false;
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
            else if (e.CommandName == "delete")
            {

                DataListItem record = e.Item;
                string id = ((TextBox)record.FindControl("tb_achievement_id")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_achievement WHERE achieve_id = @id";
                cmd.Parameters.AddWithValue("@id", id);

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
            else if (e.CommandName == "insert")
            {
                DataListItem record = e.Item;
                string achievement = ((TextBox)record.FindControl("tb_achievement")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_achievement (achieved,js_user_id) VALUES (@achievement,@js_user_id)";

                cmd.Parameters.AddWithValue("@achievement", achievement);
                cmd.Parameters.AddWithValue("@js_user_id", Session["user_id"]);

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
            else if (e.CommandName == "cancel")
            {
                dl.EditItemIndex = -1;
                dl.DataBind();
            }
            else if (e.CommandName == "update")
            {


                DataListItem record = e.Item;
                string achievement = ((TextBox)record.FindControl("tb_achievement")).Text;
                string id = ((TextBox)record.FindControl("tb_achievement_id")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE js_achievement SET achieved=@achievement WHERE achieve_id= @id";

                cmd.Parameters.AddWithValue("@achievement", achievement);
                cmd.Parameters.AddWithValue("@id", id);
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

                Button edit_btn = e.Item.FindControl("btn_edit") as Button;
                Button delete_btn = e.Item.FindControl("btn_delete") as Button;


                if (Session["sent_user_id"] != null && (int)Session["sent_user_id"] != (int)Session["user_id"])
                {
                    //other person
                    edit_btn.Visible = false;
                    delete_btn.Visible = false;

                }
                else
                {
                    edit_btn.Visible = true;
                    delete_btn.Visible = true;
                }
            }
        }
    }
}