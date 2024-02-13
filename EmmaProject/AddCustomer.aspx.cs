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
    public partial class AddCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void insertCustomer_Click(object sender, EventArgs e)
        {

            try
            {
                // Gets the values from UI controls
                string custFirst = ((TextBox)FormView1.FindControl("custFirstTextBox")).Text;
                string custLast = ((TextBox)FormView1.FindControl("custLastTextBox")).Text;
                string custPhone = ((TextBox)FormView1.FindControl("custPhoneTextBox")).Text;
                string custCity = ((TextBox)FormView1.FindControl("custCityTextBox")).Text;
                string custPostal = ((TextBox)FormView1.FindControl("custPostalTextBox")).Text;
                string custEmail = ((TextBox)FormView1.FindControl("custEmailTextBox")).Text;

                if (string.IsNullOrEmpty(custFirst) || string.IsNullOrEmpty(custLast) || string.IsNullOrEmpty(custPhone) || string.IsNullOrEmpty(custCity)
                     || (string.IsNullOrEmpty(custPostal) || (string.IsNullOrEmpty(custEmail))))
                {
                    // Sets the validation message for the modal
                    string validationMessage = "Please fill in all the fields and try again.";

                    // Triggers the modal to show with the validation message
                    string script = $"$('#validationModal').find('.modal-body').text('{validationMessage}'); $('#validationModal').modal('show');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showValidationModal", script, true);

                    return; // Stop further processing
                }



                // Calls the ObjectDataSource1 Insert method
                ObjectDataSource1.InsertParameters["custFirst"].DefaultValue = custFirst;
                ObjectDataSource1.InsertParameters["custLast"].DefaultValue = custLast;

                ObjectDataSource1.InsertParameters["custPhone"].DefaultValue = custPhone;
                ObjectDataSource1.InsertParameters["custCity"].DefaultValue = custCity;

                ObjectDataSource1.InsertParameters["custPostal"].DefaultValue = custPostal;
                ObjectDataSource1.InsertParameters["custEmail"].DefaultValue = custEmail;
                

                // Performs the insert operation
                ObjectDataSource1.Insert();

                

                
                LabelStatus.Text = "Customer added successfully.";
                Response.Redirect("AddReceipt.aspx");

              
            }
            catch (Exception ex)
            {
                // Handles exceptions or display an error message.
                LabelStatus.Text = "Error adding customer: " + ex.Message;
            }
        }
    }
}