using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OJP
{
    public partial class WebForm28 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if ((int)Session["role"] == 1)
            {
                Response.Redirect("job_recommended.aspx");
            }
            else if ((int)Session["role"] == 2)
            {
                Response.Redirect("posted_job.aspx");
            }
          
        }
    }
}