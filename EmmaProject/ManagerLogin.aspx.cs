using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Done By: Emmanuel James
//Last Modified: December 15th 2023
namespace EmmaProject
{
    public partial class ManagerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }
        }

        protected void ManagerCkick_Button(object sender, EventArgs e)
        {
            RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
            RoleManager<IdentityRole> roleMgr = new RoleManager<IdentityRole>(roleStore);

            UserStore<IdentityUser> store = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store);

            IdentityUser user = manager.Find(txtLogUsername.Text, txtLogPassword.Text);

            if (user == null)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Username or password is incorrect, please try again.";
            }
            else if (!roleMgr.RoleExists("Manager"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Manager"));
            }
            else
            {
               
                if (user.UserName == "peterVan" && txtLogPassword.Text == "224466")
                {
                    manager.AddToRole(user.Id, "Manager");

                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(userIdentity);
                    Response.Redirect("~/Inventory.aspx");
                }
                else
                {
                    // Sets the validation message for the modal
                    string validationMessage = "You have to be a manager to gain access.";

                    // Triggers the modal to show with the validation message
                    string script = $"$('#validationModal').find('.modal-body').text('{validationMessage}'); $('#validationModal').modal('show');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showValidationModal", script, true);
                }
            }
        }

    }
}
    
