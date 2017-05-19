using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ProjectFinal.Models;
using System.Diagnostics;

namespace ProjectFinal.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {

                addUser2Role(user, "User");
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                //.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                Response.Redirect("MyMenu.aspx");
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
        private void addUser2Role(ApplicationUser theuser, string therole)
        {
            
            ApplicationDbContext dbcontext = new ApplicationDbContext();
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();    // new UserManager();
                                                                                                // var result = manager.AddToRole(theuser.Id, therole);
            var result = manager.AddToRole(theuser.Id, therole);

            if (!result.Succeeded)
                Debug.WriteLine(result.Errors.FirstOrDefault());
            

        }
    }
}