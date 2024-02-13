using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmaProjectLibary;
using EmmaProjectLibary.EmmaDataSetTableAdapters;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
//Done By: Emmanuel James
//Last Modified: December 15th 2023
namespace EmmaProject
{
    public partial class Employees : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void firstEmployeeGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (firstEmployeeGridView.SelectedIndex != -1)
            {
                GridViewRow Row = firstEmployeeGridView.SelectedRow;

                if (Row != null)
                {
                    string employeeId = ((Label)Row.Cells[1].FindControl("Label1")).Text;
                    string employeeName = $"{Row.Cells[2].Text} {Row.Cells[3].Text}";

                    Session["EmployeeID"] = employeeId;
                    Response.Redirect("EmployeeDetails.aspx?employeeId=" + employeeId + "&employeeName=" + employeeName);
                }
            }
        }

 

        protected void employeeReceipt_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(employeeReceiptGridView.SelectedIndex != -1)
            {
                GridViewRow Row = employeeReceiptGridView.SelectedRow;

                if (Row != null)
                {
                    string receiptId = Row.Cells[1].Text;
                    

                    Session["RecieptID"] = receiptId;
                    Response.Redirect("CustomerOrderLine.aspx?receiptId=" + receiptId );

                   
                }
            }
        }
        protected void redirect_Click(object sender, EventArgs e)
        {
            
           
            Response.Redirect("ManagerLogin.aspx");
        }

        protected void addEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }
    }
  }
