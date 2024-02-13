using EmmaProjectLibary.EmmaDataSetTableAdapters;
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
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void insertEmployee_Click(object sender, EventArgs e)
        {
            try
            {
                
                string empFirst = empFirstTextBox.Text;
                string empLast = empLastTextBox.Text;
                int posID = int.Parse(DropDownListEmployee.SelectedValue);

                employeeLookupTableAdapter employeeAdapter = new employeeLookupTableAdapter();

               
                int newlyAddedEmployeeID = employeeAdapter.Insert(empFirst, empLast, posID);

                if (string.IsNullOrEmpty(empFirst) || string.IsNullOrEmpty(empLast) || !int.TryParse(DropDownListEmployee.SelectedValue, out posID))
                {
                    
                    string validationMessage = "Please fill in all the fields and try again.";

                    string script = $"$('#validationModal').find('.modal-body').text('{validationMessage}'); $('#validationModal').modal('show');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showValidationModal", script, true);

                    return; 
                }



                Session["EmployeeID"] = newlyAddedEmployeeID;
             

                Response.Redirect("Employees.aspx");
            }
            catch (Exception ex)
            {
                // Handles any exceptions that may occur during the insertion process
                LabelStatus.Text = "Error adding Employee: " + ex.Message;
                LabelStatus.CssClass = "text-danger";

               
            }

        }

       
    }
}