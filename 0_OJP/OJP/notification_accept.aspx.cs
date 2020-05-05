using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "show_profile")
            {
                Session["sent_user_id"] = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("profile_js_personal.aspx");
                // Response.Redirect("profile_js_personal.aspx?user_id=" + e.CommandArgument.ToString());
            }
        }
    }
}