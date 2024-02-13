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
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(User.Identity.IsAuthenticated)
            {
                showLogo.Visible = false;
                contentPanel.Visible = true;
                lnkLogin.Visible = false;
                lnkLogout.Visible = true;
                sideNav.Visible = true;
                lnkCustomerr.Visible = true;
                lnkEmployees.Visible = true;
            }
            else
            {
                contentPanel.Visible = false;
                lnkLogin.Visible = true;
                lnkLogout.Visible = false;
                showLogo.Visible = true;
                sideNav.Visible = false;
                lnkCustomerr.Visible = false;
                lnkEmployees.Visible = false;
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            contentPanel.Visible = false;
            lnkLogin.Visible = true;
            lnkLogout.Visible = false;
            showLogo.Visible = true;
            sideNav.Visible = false;
            Response.Redirect("~/Default.aspx");
        }

        protected void lnkEmployees_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Employees.aspx");
        }

        protected void lnkCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customerr.aspx");
        }
    }
}