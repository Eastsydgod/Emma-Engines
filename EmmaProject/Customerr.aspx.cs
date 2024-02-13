using EmmaProjectLibary;
using EmmaProjectLibary.EmmaDataSetTableAdapters;
using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;
//Done By: Emmanuel James
//Last Modified: December 15th 2023
namespace EmmaProject
{
    public partial class Customerr : System.Web.UI.Page
    {
        static EmmaDataSet dsEmma = new EmmaDataSet();
        private DataRow[] rows;


        static Customerr()
            => LoadRecords();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!IsPostBack)
            {
                LoadRecords();

                LabelStatus.Visible = false;
                lblStatus.Visible = false;

               
            }
        }
        private static void LoadRecords()
        {

            try
            {
                customerTableAdapter daCustomer = new customerTableAdapter();
                dsEmma.customer.Rows.Clear();
                receiptTableAdapter daReceipt = new receiptTableAdapter();
                dsEmma.receipt.Rows.Clear();
                daCustomer.Fill(dsEmma.customer);
                daReceipt.Fill(dsEmma.receipt);
            }
            catch (Exception ex)
            {

                Console.WriteLine($"Error loading records: {ex.Message}");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string criteria = GetSearchCriteria();

            if (string.IsNullOrEmpty(criteria))
            {
               
                GridView1.DataSource = dsEmma.customer;
                receiptGridView.DataSource = dsEmma.receipt;
                receiptGridView.DataBind();
                GridView1.DataBind();
                return;
            }

            
            rows = dsEmma.customer.Select(criteria);
            DisplayCustomers();
            DisplayReceipts();
            lblStatus.Visible = true;
            
        }


        private string GetSearchCriteria()
        {
            string criteria = (txtTitleSearch.Text.Length > 0) ?
                "custFirst Like '" + txtTitleSearch.Text + "*' OR " +
                "custLast Like '%" + txtTitleSearch.Text + "%' OR " +
                "custEmail Like '%" + txtTitleSearch.Text + "%' OR " +
                "custPhone Like '%" + txtTitleSearch.Text + "%' OR " +
                "custCity Like '%" + txtTitleSearch.Text + "%' OR " +
                "custPostal Like '%" + txtTitleSearch.Text + "%'" :
                "";

            return criteria;
        }

        private void DisplayReceipts()
        {
            if (Session["ReceiptID"] != null && int.TryParse(Session["ReceiptID"].ToString(), out int receiptID))
            {
                System.Diagnostics.Debug.WriteLine($"Displaying receipt details for ReceiptID: {receiptID}");
                receiptGridView.DataSource = null;
                receiptGridView.DataBind();

                foreach (DataRow customerRow in rows)
                {
                    int customerId = Convert.ToInt32(customerRow["id"]);
                    DataRow[] receiptRows = dsEmma.receipt.Select($"[custID] = {customerId}");

                    if (receiptRows.Length > 0)
                    {
                        DataTable receiptTable = receiptRows.CopyToDataTable();
                        if (receiptGridView.DataSource == null)
                        {
                            receiptGridView.DataSource = receiptTable;
                        }
                        else
                        {
                            (receiptGridView.DataSource as DataTable).Merge(receiptTable);
                        }
                    }
                }

                receiptGridView.DataBind();
            }
            else
            {
                
                System.Diagnostics.Debug.WriteLine("ReceiptID not found in the session.");
            }
        }




        private void DisplayCustomers()
        {
            if (rows != null && rows.Length > 0)
            {
                GridView1.DataSource = rows.CopyToDataTable();
                GridView1.DataBind();
                lblStatus.Text = "Search Results: " + GridView1.Rows.Count.ToString();
            }
            else
            {
                
                lblStatus.Visible = true;
                lblStatus.Text = "No matching customers found, please try again.";
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }


        protected void Details_Click(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;

            if (selectedRow != null)
            {
                string customerId = selectedRow.Cells[6].Text;
                Session["CustomerID"] = customerId;
                Response.Redirect("CustomerDetails.aspx");
            }
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;

            if (selectedRow != null)
            {
                string customerIdText = selectedRow.Cells[1].Text;

                if (!string.IsNullOrEmpty(customerIdText) && int.TryParse(customerIdText, out int customerId))
                {
                    Session["CustomerID"] = customerId;
                    Response.Redirect("CustomerDetails.aspx");
                }
                
            }
        }



        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = receiptGridView.SelectedRow;

            string receiptIDString = selectedRow.Cells[2].Text;
            if (!string.IsNullOrEmpty(receiptIDString) && int.TryParse(receiptIDString, out int receiptID))
            {
                
                Session["ReceiptID"] = receiptID;
                Response.Redirect("receipt.aspx");
            }

        }

        protected void addCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCustomer.aspx");

        }
    }

    }

