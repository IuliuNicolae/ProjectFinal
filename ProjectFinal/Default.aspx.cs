using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity.Owin;
namespace ProjectFinal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                
                Response.Redirect("~/Account/MyMenu.aspx");

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        
    }
}