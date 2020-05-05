using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class reference_js : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            //  Session["user_id"] = 41; // tentative user id

            if (Session["sent_user_id"] != null && Session["sent_user_id"] != Session["user_id"])
            {
                ((Panel)Page.Master.FindControl("pnl_menu")).Visible = false;
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
                string ref_id = ((TextBox)record.FindControl("tb_ref")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_reference WHERE ref_id=@ref";
                cmd.Parameters.AddWithValue("@ref", ref_id);

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
                string ref_id = ((TextBox)record.FindControl("tb_ref")).Text;
                string name = ((TextBox)record.FindControl("tb_name")).Text;
                string institute_name = ((TextBox)record.FindControl("tb_institute")).Text;
                string mobile_no = ((TextBox)record.FindControl("tb_mobile")).Text;
                string designation = ((TextBox)record.FindControl("tb_designation")).Text;
                string email = ((TextBox)record.FindControl("tb_email")).Text;


                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_reference (name,designation,institute_name,mobile_no,email,js_user_id) VALUES (@nm,@des,@institute,@mob,@mail,@js_user_id)";

                cmd.Parameters.AddWithValue("@nm", name);
                cmd.Parameters.AddWithValue("@des", designation);
                cmd.Parameters.AddWithValue("@institute", institute_name);
                cmd.Parameters.AddWithValue("@mob", mobile_no);
                cmd.Parameters.AddWithValue("@mail", email);
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
                string ref_id = ((TextBox)record.FindControl("tb_ref")).Text;
                string name = ((TextBox)record.FindControl("tb_name")).Text;
                string institute_name = ((TextBox)record.FindControl("tb_institute")).Text;
                string mobile_no = ((TextBox)record.FindControl("tb_mobile")).Text;
                string designation = ((TextBox)record.FindControl("tb_designation")).Text;
                string email = ((TextBox)record.FindControl("tb_email")).Text;


                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE js_reference SET name=@nm, designation = @des, institute_name =@institute, mobile_no=@mob, email= @mail WHERE ref_id= @ref";


                cmd.Parameters.AddWithValue("@nm", name);
                cmd.Parameters.AddWithValue("@des", designation);
                cmd.Parameters.AddWithValue("@institute", institute_name);
                cmd.Parameters.AddWithValue("@mob", mobile_no);
                cmd.Parameters.AddWithValue("@mail", email);
                cmd.Parameters.AddWithValue("@ref", ref_id);

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

                Button edit_btn = e.Item.FindControl("btn_edit") as Button;
                Button delete_btn = e.Item.FindControl("btn_delete") as Button;


                if (Session["sent_user_id"] != null && Session["sent_user_id"] != Session["user_id"])
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