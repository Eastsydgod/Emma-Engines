using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmaProject
{
    public partial class receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }

        protected void addReceipt_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddReceipt");
        }
    }
}