<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StartupPage.aspx.cs" Inherits="EmmaProject.StartupPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
        <asp:Panel ID="Panel1" runat="server">

             <div class="text-end" style="height: 51px" >
                 &nbsp;<br />
                 <asp:LinkButton ID="lnkLogin" runat="server" OnClick="Login_Click">Login</asp:LinkButton>
                 &nbsp;
                 <asp:LinkButton ID="lnkLogout" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
                 <br />
 </div>
     <div class="row justify-content-center" >
    <img src="Images/Logo.png" alt="Company Logo" class="logo img-fluid" style="border: 4px solid white;"/>
</div>
 <div class="row third-section mt-5">
     <div class="col-md-4 text-center">
         <a class="third-section-icon" href="Customerr.aspx" tabindex="17">
             <i class="fa-solid fa-user-plus icon-large"></i>
             <h2>CUSTOMER</h2>
         </a>
     </div>
     <div class="col-md-4 text-center">
         <a class="third-section-icon" href="Inventory.aspx" tabindex="18">
             <i class="fa-solid fa-gear second-icon-large"></i>
             <h2>INVENTORY</h2>
         </a>
     </div>
     <div class="col-md-4 text-center">
         <a class="third-section-icon" href="orders.aspx" tabindex="-1">
             <i class="fa-solid fa-cart-shopping second-icon-large"></i>
             <h2> &ThickSpace; ORDERS &ThickSpace;</h2>
         </a>
     </div>
 </div>
        </asp:Panel>
       
    
</asp:Content>

