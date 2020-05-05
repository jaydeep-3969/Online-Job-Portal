using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            //Session["user_id"] = 35;
            if (Session["sent_user_id"] != null && Session["sent_user_id"] != Session["user_id"])
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
                string exp_id = ((TextBox)record.FindControl("tb_exp_id")).Text;

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "DELETE FROM js_experience WHERE exp_id=@exp";
                cmd.Parameters.AddWithValue("@exp", exp_id);

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
                
                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                int exp_yr = 0;
                //DateTime init = new DateTime(0001, 01, 01);
                if (Convert.ToInt32(((RadioButtonList)record.FindControl("rblist_is_working")).SelectedValue) == 0)
                {
                    exp_yr = CalculateYr(Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_to")).Text), Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_from")).Text));
                }
                else
                {
                    exp_yr = CalculateYr(DateTime.Now, Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_from")).Text));
                }

                cmd.CommandText = "INSERT INTO js_experience (js_user_id,institute_name,designation,is_working,exp_from,exp_to,achievement,year_exp) VALUES (" + (int)Session["user_id"] + ",@inst_nm,@designation,@is_work,@from,@to,@achieve," + exp_yr + ")";

                
                cmd.Parameters.AddWithValue("@inst_nm", ((TextBox)record.FindControl("tb_inst_nm")).Text);
                cmd.Parameters.AddWithValue("@designation", ((TextBox)record.FindControl("tb_desig")).Text);
                cmd.Parameters.AddWithValue("@is_work", ((RadioButtonList)record.FindControl("rblist_is_working")).SelectedValue);
                cmd.Parameters.AddWithValue("@from", (((TextBox)record.FindControl("cld_exp_from")).Text));
                cmd.Parameters.AddWithValue("@to", (((TextBox)record.FindControl("cld_exp_to")).Text));
                cmd.Parameters.AddWithValue("@achieve", ((TextBox)record.FindControl("tb_achievement")).Text);

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
                string exp_id = ((TextBox)record.FindControl("tb_exp_id")).Text;

                int exp_yr = 0;
                // DateTime init = new DateTime(0001, 01, 01);
                if (Convert.ToInt32(((RadioButtonList)record.FindControl("rblist_is_working")).SelectedValue) == 0)
                {
                    exp_yr = CalculateYr(Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_to")).Text), Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_from")).Text));
                }
                else
                {
                    exp_yr = CalculateYr(DateTime.Now, Convert.ToDateTime(((TextBox)record.FindControl("cld_exp_from")).Text));
                }

                SqlConnection con = (SqlConnection)Application["con"];
                SqlCommand cmd = (SqlCommand)Application["cmd"];

                cmd.CommandText = "UPDATE js_experience SET designation = @designation, institute_name =@inst_nm,is_working=@is_work,exp_from=@from,exp_to=@to,achievement=@achieve,year_exp="+exp_yr+" WHERE exp_id= "+exp_id;



                cmd.Parameters.AddWithValue("@inst_nm", ((TextBox)record.FindControl("tb_inst_nm")).Text);
                cmd.Parameters.AddWithValue("@designation", ((TextBox)record.FindControl("tb_desig")).Text);
                cmd.Parameters.AddWithValue("@is_work", ((RadioButtonList)record.FindControl("rblist_is_working")).SelectedValue);
                cmd.Parameters.AddWithValue("@from", (((TextBox)record.FindControl("cld_exp_from")).Text));
                cmd.Parameters.AddWithValue("@to", (((TextBox)record.FindControl("cld_exp_to")).Text));
                cmd.Parameters.AddWithValue("@achieve", ((TextBox)record.FindControl("tb_achievement")).Text);


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

        /*protected void rblist_is_working_SelectedIndexChanged(object sender, EventArgs e)
         {
             if ( ((Calendar)dl.FindControl("cld_exp_to")).Enabled == true)
             {
                 ((Calendar)dl.FindControl("cld_exp_to")).Enabled = false;
             }


             if (((Calendar)dl.FindControl("cld_exp_to")).Enabled == false)
             {
                 ((Calendar)dl.FindControl("cld_exp_to")).Enabled = true;
             }
             //(Panel)Page.FindControl("cld_exp_00") = false;
             //((Calendar)dl.FindControl("cld_exp_to")).Enabled = false;
         }*/

        //((RadioButtonList)dl.FindControl("rblist_is_working")).SelectedValue == "1" &&
    }

}