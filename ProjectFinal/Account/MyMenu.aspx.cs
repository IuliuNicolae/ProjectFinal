using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFinal.Account
{
    public partial class MyMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminBtn_Click(object sender, EventArgs e)
        {try
            {
                Response.Redirect("Administrator_Tools.aspx");
            }
            catch (Exception ex) { }
            Response.Redirect("Error.aspx");
        }

        protected void userBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserTools.aspx");
        }
    }
    }
