using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmaProjectLibary.EmmaDataSetTableAdapters;
//Done By: Emmanuel James
//Last Modified: December 15th 2023
namespace EmmaProject
{
    public partial class AddReceipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Makes sure the user is signed in
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void btnAddReceipt_Click(object sender, EventArgs e)
        {
            try
            {
             
                string orderNumber = ordNumberTextBox.Text;
                DateTime orderDate = DateTime.Parse(ordDateTextBox.Text);
                bool orderPaid = ordPaidCheckBox.Checked;
                int paymentID = int.Parse(DropDownListPayment.SelectedValue);
                int customerID = int.Parse(DropDownListCustomer.SelectedValue);
                int employeeID = int.Parse(DropDownListEmployee.SelectedValue);

            
                receiptTableAdapter receiptAdapter = new receiptTableAdapter();

                int newlyAddedReceiptID = receiptAdapter.Insert(orderNumber, orderDate, orderPaid, paymentID, customerID, employeeID);

             
                Session["ReceiptID"] = newlyAddedReceiptID;

               
                Response.Redirect("AddOrderLine.aspx");
            }
            catch (Exception ex)
            {
              
                lblReceiptMessage.Text = "Error adding receipt: " + ex.Message;
                lblReceiptMessage.CssClass = "text-danger";

                string validationMessage = "Please enter all the fields and try again.";


                string script = $"$('#validationModal').find('.modal-body').text('{validationMessage}'); $('#validationModal').modal('show');";
                ScriptManager.RegisterStartupScript(this, GetType(), "showValidationModal", script, true);
            }
        }

    }
}
