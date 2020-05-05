using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class profile_redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            Session["sent_user_id"] = Session["user_id"];

            if((int)Session["role"] == 1)
            {
                if (Convert.ToInt32(Request.QueryString["refer"]) == 1)
                {
                    Response.Redirect("reference_js.aspx");
                }
                Response.Redirect("profile_js_personal.aspx");
            }
            else if ((int)Session["role"] == 2)
            {
                if (Convert.ToInt32(Request.QueryString["refer"]) == 1)
                {
                    Response.Redirect("reference_js.aspx");
                }
                Response.Redirect("profile_jp_company.aspx");
            }
        }
    }
}