using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class tmp_date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = (SqlConnection)Application["con"];
            SqlCommand cmd = (SqlCommand)Application["cmd"];

            int age = CalculateYr(DateTime.Now, Convert.ToDateTime(TextBox1.Text));
            // int user_id = 35;
            cmd.CommandText = "UPDATE js_master  SET dob = @dob,age="+age+" WHERE js_user_id = 35";
                         

            cmd.Parameters.AddWithValue("@dob", TextBox1.Text);


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

                    Response.Write("SUCCESS");
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
    }
}