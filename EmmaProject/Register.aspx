<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Register.aspx.cs" Inherits="EmmaProject.Register" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <webopt:bundlereference runat="server" path="~/Content/css" />
     <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link  href="~/Content/EmmaPj.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/220fe8c60c.js" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style7 {
            position: relative;
            display: flex;
            align-items: center;
            width: 98%;
            font-size: 1rem;
            color: var(--bs-accordion-btn-color);
            text-align: left;
            border-radius: 0;
            transition: none;
            left: 5px;
            top: 11px;
            height: 257px;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-color: var(--bs-accordion-btn-bg);
        }
        .auto-style8 {
            margin-top: 10px;
            height: 37px;
        }

         
      .foot {
     position: fixed;
     right: 0px;
     bottom: 0;
     width: 100%;
     height: 60px;
     background-color: #343a40;
     padding: 15px 0;
     color: white;
     text-align: center;
 }

 footer, .footer {
     font-size: 20px;
 }

 .vert {
     border-right: 2px solid #818181;
     height: 60px;
 }

 @media (max-width: 767px) {
     footer {
         position: static;
     }
 }
    </style>
</head>
<body style="height: 801px">
   
 <form id="form1" runat="server" class="auto-style6" autocomplete="off">

 <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
    <div class="container">
        <a href="Default.aspx"><img src="Images/Logo.png"  alt="Company Logo" class="Mlogo"/></a>
        <a style="position: absolute; left: 490px" class="navbar-brand" runat="server" href="~/">Emma Engines</a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="auto-style2">
            <ul class="navbar-nav flex-grow-1" id="nav" style="position:absolute !important; right: 60px;">
                
                <li class="nav-item"><a class="nav-link" runat="server" href="~/About"><i class="fa-solid fa-info"></i> About</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Contact"><i class="fa fa-fw fa-envelope"></i> Contact</a></li>
          
            </ul>
        </div>
    </div>
</nav>
        <asp:Panel ID="Panel2" runat="server" ><div class="auto-style1" style="height: 700px;" >
            
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/NewLogo.png"  CssClass="auto-style7">
    </asp:Panel>
    <h1 style="background-color: #FFFFFF; text-align: center; font-weight: 500;" class="auto-style4">Register New User</h1>
 <div class="auto-styleR">
       <div  class="div-pad">
           <asp:Label ID="Label1" runat="server" Text="Username:" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
           
       </div>
     <div  class="div-pad">
          <asp:TextBox ID="txtUsername" runat="server" Width="176px"></asp:TextBox>
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
     </div>
     <div  class="div-pad">
        <asp:Label ID="Label2" runat="server" Text="Password:" Font-Size="X-Large" Font-Bold="True" autocomplete="new-password" Font-Overline="False" ForeColor="White"></asp:Label>
       
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
     </div>
     <div  class="auto-style8">
          <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="176px"></asp:TextBox>
         

          <br />
         

          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Font-Bold="True" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
     </div>
     <div  class="div-pad">
      <asp:Label ID="Label7" runat="server" Text="Confirm Password:" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
  
      </div>
     <div  class="div-pad">
          <asp:TextBox ID="txtConfirmPassword" runat="server" Height="30px" Width="176px" CausesValidation="True"></asp:TextBox>
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required" Font-Bold="True" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
         
          &nbsp;&nbsp;<br />
          <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
          <br />
             <asp:Button  ID="Button1" runat="server" CssClass="btn btn-secondary" OnClick="Registe_Button" Text="Register" Width="99px" BorderStyle="Solid" ForeColor="White"  />
          <asp:Button ID="btnBack" runat="server" CssClass="btn btn-secondary" OnClientClick="goBack(); return false;" style="margin-left: 15px; margin-bottom: 2px;" Text="Back" Width="99px" BorderStyle="Solid" />
     </div>
    
    </div>
</div>
        </asp:Panel>
    </form>
   
     <div class="foot">

     <h2 class="footer">&copy;  <%: DateTime.Now.Year %> Emma Engines</h2>
 </div>
    <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
</asp:PlaceHolder>
</body>
</html>
