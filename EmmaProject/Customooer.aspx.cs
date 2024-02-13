using EmmaProjectLibary;
using EmmaProjectLibary.EmmaDataSetTableAdapters;
using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

namespace EmmaProject
{
    public partial class Customer : System.Web.UI.Page
    {
        static EmmaDataSet dsEmma = new EmmaDataSet();
        private DataRow[] rows;


        static Customer()
            => LoadRecords();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecords();

                LabelStatus.Visible = false;

                if (dsEmma.customer.Rows.Count == 0)
                {
                    txtTitleSearch.Enabled = false;
                    btnSearch.Enabled = false;
                }
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
            if (dsEmma.customer.Count > 0)
            {
                string criteria = GetSearchCriteria();
                rows = dsEmma.customer.Select(criteria);
                DisplayCustomers();
                DisplayReceipts();
            }
            else
            {
                return;
            }
        }

        private string GetSearchCriteria()
        {
            string criteria = (txtTitleSearch.Text.Length > 0) ?
                "[Full Name] Like '" + txtTitleSearch.Text + "*' OR " +
                "Email Like '%" + txtTitleSearch.Text + "%' OR " +
                "Phone Like '%" + txtTitleSearch.Text + "%' OR " +
                "City Like '%" + txtTitleSearch.Text + "%' OR " +
                "Postal Like '%" + txtTitleSearch.Text + "%'" :
                "";

            return criteria;
        }

        private void DisplayReceipts()
        {
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



        private void DisplayCustomers()
        {
            if (string.IsNullOrEmpty(GetSearchCriteria()))
            {
                GridView1.DataSource = dsEmma.customer;
            }
            else
            {
                GridView1.DataSource = rows.CopyToDataTable();
            }

            GridView1.DataBind();
            lblStatus.Text = "Search Results: " + ((GridView1.Rows.Count > 0) ? GridView1.Rows.Count.ToString() : "0");
        }

        protected void Details_Click(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;

            if (selectedRow != null)
            {
                string customerId = selectedRow.Cells[6].Text;
                Session["CustomerID"] = customerId;
                Response.Redirect("CustomerDetails.aspx?customerId=" + customerId);
            }
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.SelectedRow;

            if (selectedRow != null)
            {
                string customerId = selectedRow.Cells[6].Text;
                Session["CustomerID"] = customerId;
                Response.Redirect("CustomerDetails.aspx?customerId=" + customerId);
            }
        }
      

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = receiptGridView.SelectedRow;

            if (selectedRow != null)
            {
                string receiptID = selectedRow.Cells[2].Text;

                if (!string.IsNullOrEmpty(receiptID))
                {
                    Session["ReceiptID"] = receiptID;
                    Response.Redirect("receipt.aspx?receiptID=" + receiptID);
                }
                else
                {
                    LabelStatus.Visible = true;
                    LabelStatus.Text = "No Order Line Details";

                }
            }
        }

       
    }
}
