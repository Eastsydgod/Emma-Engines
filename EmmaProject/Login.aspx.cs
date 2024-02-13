using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
//Done By: Emmanuel James
//Last Modified: December 15th 2023

namespace EmmaProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }
           
        }

        //Creates a user login
        protected void Login_Button(object sender, EventArgs e)
        {
            RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
            RoleManager<IdentityRole> roleMgr = new RoleManager<IdentityRole>(roleStore);

            UserStore<IdentityUser> store = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store); 

            IdentityUser user = manager.Find(txtLogUsername.Text, txtLogPassword.Text);
            if(user == null)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Username or password is inceorrect, please try again.";
            }
            else  if (!roleMgr.RoleExists("Admin"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Admin"));
            }
            else
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/Default.aspx");
            }

           

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}