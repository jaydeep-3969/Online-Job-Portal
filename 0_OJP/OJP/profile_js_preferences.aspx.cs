using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class js_profile_preferences : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session["user_id"] = 35; // tentative user id
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
                string i1 = ((DropDownList)record.FindControl("tb_i1")).SelectedValue;
                string i2 = ((DropDownList)record.FindControl("tb_i2")).SelectedValue;
                string i3 = ((DropDownList)record.FindControl("tb_i3")).SelectedValue;
                string l1 = ((DropDownList)record.FindControl("tb_l1")).SelectedValue;
                string l2 = ((DropDownList)record.FindControl("tb_l2")).SelectedValue;
               // string l2 = ((DropDownList)record.FindControl("tb_l2")).SelectedValue;
                string l3 = ((DropDownList)record.FindControl("tb_l3")).SelectedValue;
                string d1 = ((DropDownList)record.FindControl("tb_d1")).SelectedValue;
                string d2 = ((DropDownList)record.FindControl("tb_d2")).SelectedValue;
                string d3 = ((DropDownList)record.FindControl("tb_d3")).SelectedValue;
                string min_sal = ((TextBox)record.FindControl("tb_min_salary")).Text;
                string min_emp = ((TextBox)record.FindControl("tb_min_size_emp")).Text;
                string id = ((TextBox)record.FindControl("tb_pref_id")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE js_preferences SET industry1=@i1, industry2=@i2, industry3=@i3, location1=@l1, location2=@l2," +
                    "location3=@l3, js_user_id=@js_user_id, designation1=@d1, designation2=@d2, designation3=@d3, min_salary=@min_salary, min_size_in_emp=@min_size_emp WHERE pref_id=@id";


                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@i1", i1);
                cmd.Parameters.AddWithValue("@i2", i2);
                cmd.Parameters.AddWithValue("@i3", i3);
                cmd.Parameters.AddWithValue("@l1", l1);
                cmd.Parameters.AddWithValue("@l2", l2);
                cmd.Parameters.AddWithValue("@l3", l3);
                cmd.Parameters.AddWithValue("@d1", d1);
                cmd.Parameters.AddWithValue("@d2", d2);
                cmd.Parameters.AddWithValue("@d3", d3);
                cmd.Parameters.AddWithValue("@min_salary", min_sal);
                cmd.Parameters.AddWithValue("@min_size_emp", min_emp);
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
                    //Response.Redirect("profile_js_personal.aspx");
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