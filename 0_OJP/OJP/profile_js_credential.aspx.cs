using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_jp_credential : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
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
                string new_pw = ((TextBox)record.FindControl("tb_new_pw")).Text;
                string que = ((TextBox)record.FindControl("tb_que")).Text;
                string ans = ((TextBox)record.FindControl("tb_ans")).Text;


                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE credential SET password=@pw, que=@que, ans=@ans WHERE user_id=@user_id";


                cmd.Parameters.AddWithValue("@pw", new_pw);
                cmd.Parameters.AddWithValue("@que", que);
                cmd.Parameters.AddWithValue("@ans", ans);
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
        }
}