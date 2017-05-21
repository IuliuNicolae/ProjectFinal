using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFinal.Account
{
    public partial class Administrator_Tools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            string user = (String)Session["UserName"];
            labelError.Text = "Your selection has: " + user;
            Response.Redirect("~/UserTools.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["UserName"] = DropDownList1.SelectedValue;

        }
    }
}