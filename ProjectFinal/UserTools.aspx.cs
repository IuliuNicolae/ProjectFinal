using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFinal
{
    public partial class UserTools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var name = Context.User.Identity.Name.ToString();
            errorLabel.Text = name;

            // This doen't count login failures towards account lockout
            // To enable password failures to trigger lockout, change to shouldLockout: true
          //  var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);
        }

        protected void getGps_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyMap.aspx");
        }

        protected void pulseBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HeartRateChart.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
          
      
          errorLabel.Text = "The selected date is " + Calendar1.SelectedDate.ToShortDateString();
            string date = Calendar1.SelectedDate.ToShortDateString();
            Session["Date"] = date;
        }

        protected void stepsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Chart.aspx");
        }

        protected void noteBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notes.aspx");
        }
    }
}
