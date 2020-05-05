using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_js_academic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            // Session["user_id"] = 35;
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
                string id = ((TextBox)record.FindControl("tb_academic_id")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_academic WHERE academic_id = @id";
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

                string degree = ((TextBox)record.FindControl("tb_degree")).Text;
                string branch = ((TextBox)record.FindControl("tb_branch")).Text;
                string passing = ((TextBox)record.FindControl("tb_passing_year")).Text;
                string mark = ((TextBox)record.FindControl("tb_mark")).Text;
                string pr = ((TextBox)record.FindControl("tb_pr")).Text;
                string mark_type = ((RadioButtonList)record.FindControl("rblist_mark_type")).SelectedValue;
                string institute = ((TextBox)record.FindControl("tb_institute")).Text;
                string acd_id = ((TextBox)record.FindControl("tb_acd")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "INSERT INTO js_academic (institute_name, degree,is_percentage,mark,branch, pr,passing_year,js_user_id) VALUES (@i_n, @degree, @mark_type, @mark, @branch,@pr, @passing_year," + (int)Session["user_id"] + ")";

                cmd.Parameters.AddWithValue("@i_n", institute);
                cmd.Parameters.AddWithValue("@degree", degree);
                cmd.Parameters.AddWithValue("@mark", mark);
                cmd.Parameters.AddWithValue("@mark_type", mark_type);
                cmd.Parameters.AddWithValue("@branch", branch);
                cmd.Parameters.AddWithValue("@passing_year", passing);
                //  cmd.Parameters.AddWithValue("@academic_id", acd_id);
                cmd.Parameters.AddWithValue("@pr", pr);


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

                string degree = ((TextBox)record.FindControl("tb_degree")).Text;
                string branch = ((TextBox)record.FindControl("tb_branch")).Text;
                string passing = ((TextBox)record.FindControl("tb_passing_year")).Text;
                string mark = ((TextBox)record.FindControl("tb_mark")).Text;
                string pr = ((TextBox)record.FindControl("tb_pr")).Text;
                string mark_type = ((RadioButtonList)record.FindControl("rblist_mark_type")).SelectedValue;
                string institute = ((TextBox)record.FindControl("tb_institute")).Text;
                string acd_id = ((TextBox)record.FindControl("tb_acd")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE js_academic SET institute_name=@i_n, degree=@degree,is_percentage=@mark_type,mark=@mark ,pr=@pr,branch=@branch, passing_year=@passing_year WHERE academic_id=@academic_id";


                cmd.Parameters.AddWithValue("@i_n", institute);
                cmd.Parameters.AddWithValue("@degree", degree);
                cmd.Parameters.AddWithValue("@mark", mark);
                cmd.Parameters.AddWithValue("@mark_type", mark_type);
                cmd.Parameters.AddWithValue("@branch", branch);
                cmd.Parameters.AddWithValue("@passing_year", passing);
                cmd.Parameters.AddWithValue("@academic_id", acd_id);
                cmd.Parameters.AddWithValue("@pr", pr);

                // cmd.Parameters.AddWithValue("@academic_id", acd_id);
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