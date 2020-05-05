using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.SessionState;

namespace OJP
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            Application["cmd"] = cmd;
            Application["con"] = con;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            if(Application["online_users"] == null)
            {
                Application["online_users"] = 1;
            }
            else
            {
                Application["online_users"] = (int)Application["online_users"] + 1;
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if ((int)Application["online_users"] != 0)
            {
                Application["online_users"] = (int)Application["online_users"] - 1;
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}