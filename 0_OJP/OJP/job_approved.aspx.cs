using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class job_approved : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["user_id"] = 35;
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "show_job")
            {
                Response.Redirect("job_detailed.aspx?job_id=" + e.CommandArgument.ToString());
            }
        }
    }
}