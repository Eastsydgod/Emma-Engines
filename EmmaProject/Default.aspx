<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmaProject._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
                <div class="text-end" style="height: 51px" >
                &nbsp;<br />

                   <asp:Panel ID="navPanel" runat="server">
                            <asp:LinkButton ID="lnkCustomerr" runat="server" OnClick="lnkCustomer_Click" onmouseover="this.style.color='white'; this.getElementsByTagName('i')[0].style.color='white';" onmouseout="this.style.color=' #B2BEB5'; this.getElementsByTagName('i')[0].style.color='black';" style="font-size: 20px; text-decoration: none; color: whitesmoke; position:absolute; top: 30px; left: 1509px; height: 33px;">
   Customer
</asp:LinkButton>
                            <asp:LinkButton ID="lnkEmployees" runat="server" OnClick="lnkEmployees_Click" onmouseover="this.style.color='white'; this.getElementsByTagName('i')[0].style.color='white';" onmouseout="this.style.color=' #B2BEB5'; this.getElementsByTagName('i')[0].style.color='black';" style="font-size: 20px; text-decoration: none; color: whitesmoke; position:absolute; top: 30px; left: 1369px; height: 32px; width: 87px;">
    Employee
</asp:LinkButton>
                   </asp:Panel>

<div style="position: absolute; right: 50px;">
    <asp:LinkButton ID="lnkLogin" runat="server" OnClick="Login_Click" onmouseover="this.style.color='white'; this.getElementsByTagName('i')[0].style.color='white';" onmouseout="this.style.color='black'; this.getElementsByTagName('i')[0].style.color='black';" style="font-size: 20px; text-decoration: none; color: black;">
    <i class="fa fa-fw fa-user" style="margin-right: 7px; color: black;"></i>Login
</asp:LinkButton>


                   
                &nbsp;
               <asp:LinkButton ID="lnkLogout" runat="server" OnClick="Logout_Click" onmouseover="this.style.color='white'; this.getElementsByTagName('i')[0].style.color='white';" onmouseout="this.style.color='black'; this.getElementsByTagName('i')[0].style.color='black';" style="font-size: 20px; text-decoration: none; color: black;">
    <i class="fa fa-fw fa-user" style="margin-right: 7px; color: black;"></i>Logout
</asp:LinkButton>
</div>

                <br />

</div>
    <asp:Panel ID="sideNav" runat="server">
        <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
    </asp:Panel>
   <script type="text/javascript">
       
   </script>
    

     <asp:Panel ID="showLogo" runat="server">
                 <div class="row justify-content-center" >
    <img src="Images/Logo.png" alt="Company Logo" class="logo img-fluid" style="border: 4px solid white;"/>
            <h2 style="text-align:center; font-weight: bold; font-size: 50px; margin-top: 11px">Welcome</h2>
</div>
     </asp:Panel>
      
    <asp:Panel ID="contentPanel" runat="server">

             
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
         <a class="third-section-icon" href="ManagerLogin.aspx" tabindex="18">
             <i class="fa-solid fa-gear second-icon-large"></i>
             <h2>INVENTORY</h2>
         </a>
     </div>
     <div class="col-md-4 text-center">
         <a class="third-section-icon" href="Employees.aspx" tabindex="-1">
             <i class="fa-solid fa-cart-shopping second-icon-large"></i>
             <h2> &ThickSpace; ORDERS &ThickSpace;</h2>
         </a>
     </div>
 </div>
  </asp:Panel>
       
    
</asp:Content>
