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
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1 != null)
            {

                GridViewRow selectedRow = GridView1.SelectedRow;

                if (selectedRow != null)
                {
                    string inventoryId = selectedRow.Cells[2].Text;
                    Session["InventoryId"] = inventoryId;
                    Response.Redirect("Inventory_Details.aspx?inventoryId=" + inventoryId);
                }
            }

        }
    }
}