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
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            string employeeName = Request.QueryString["employeeName"];
        }

        protected void empRedirect_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }
    }
}