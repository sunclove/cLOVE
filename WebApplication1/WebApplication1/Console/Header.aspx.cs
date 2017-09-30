using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Console
{
    public partial class Header : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lnkbtnSignOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            //FormsAuthentication.RedirectToLoginPage();
            ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscripts", "<script>parent.location.href='/Console/Login.aspx';</script>");
        }
    }
}