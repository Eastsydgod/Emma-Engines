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
    public partial class CustomerDetails : System.Web.UI.Page 
    {
    


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!IsPostBack)
            {
                
                lblMessage.Text = "Info";
            }
            else
            {
               
                if (!string.IsNullOrEmpty(lblMessage.Text))
                {
                    lblMessage.Visible = false;
                }
            }
        }



        protected void delete_Click(object sender, EventArgs e)
        {
            ObjectDataSourceStatusEventArgs objArgs = e as ObjectDataSourceStatusEventArgs;

            if (objArgs != null && objArgs.Exception != null)
            {
                objArgs.ExceptionHandled = true;
                lblMessage.Text = "Unable to Delete Customer";
                lblMessage.Visible = true;
            }
            else
            {
                lblMessage.Visible = false;
            }
        }


    }
}