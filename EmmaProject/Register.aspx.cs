using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Antlr.Runtime.Misc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
//Done By: Emmanuel James
//Last Modified: December 15th 2023
namespace EmmaProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }
        //Registers the user
        protected void Registe_Button(object sender, EventArgs e)
        {
           UserStore<IdentityUser> store = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store);

            IdentityUser user = new IdentityUser(txtUsername.Text);

            IdentityResult result = manager.Create(user, txtPassword.Text);

            if(result.Succeeded)
            {
                lblMessage.Text = "User Created";
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblMessage.Text = result.Errors.FirstOrDefault();
            }


        }
    }
}