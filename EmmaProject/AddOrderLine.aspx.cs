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
    public partial class AddOrderLine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void btnAddOrderLine_Click(object sender, EventArgs e)
        {
            try
            {
                decimal orlPrice = decimal.Parse(orlPriceTextBox.Text);

                int orlQuantity = int.Parse(orlQuantityTextBox.Text);
                bool orlOrderReq = orlOrderReqCheckBox.Checked;
                string orlNote = orlNoteTextBox.Text;
                int inventoryID = int.Parse(DropDownList1.SelectedValue);
                int receiptID = int.Parse(DropDownList2.SelectedValue);


                    order_line1TableAdapter orlAdapter = new order_line1TableAdapter();


                    int newlyAddedOrlID = orlAdapter.Insert(orlPrice, orlQuantity, orlOrderReq, orlNote, inventoryID, receiptID);




                    // Sets the Session variable for the newly added receipt ID
                    Session["ReceiptID"] = newlyAddedOrlID;

                    // Redirects to the receipt details page
                    Response.Redirect("Customerr.aspx");
                

               
                
            }
            catch (Exception ex)
            {
                lblReceiptMessage.Text = "Error adding order line: " + ex.Message;
                lblReceiptMessage.CssClass = "text-danger";
                string validationMessage = "Please enter all the fields and try again.";


                string script = $"$('#validationModal').find('.modal-body').text('{validationMessage}'); $('#validationModal').modal('show');";
                ScriptManager.RegisterStartupScript(this, GetType(), "showValidationModal", script, true);
            }
        }
    }
    }
