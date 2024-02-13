<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmaProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <webopt:bundlereference runat="server" path="~/Content/css" />
     <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link  href="~/Content/EmmaPj.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/220fe8c60c.js" crossorigin="anonymous"></script>
</head>
<body>
   
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
        <asp:Panel ID="Panel2" runat="server" ><div class="auto-style1" >
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/NewLogo.png" CssClass="auto-style3">
    </asp:Panel>
    <h1 style="background-color: #FFFFFF; text-align: center; font-weight: 500;" class="auto-style4">Login</h1>
 <div class="auto-style5">
       <div class="div-pad">
           <asp:Label ID="Label1" runat="server" Text="Username:" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
           
       </div>
     <div>
          <asp:TextBox ID="txtLogUsername" runat="server" Width="168px"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogUsername" ErrorMessage="Username is required" Font-Bold="True" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
     </div>
     <div >
        <asp:Label ID="Label2" runat="server" Text="Password:" Font-Size="X-Large" autocomplete="new-password" Font-Bold="True" ForeColor="White"></asp:Label>
       
     </div>
     <div >
          <asp:TextBox ID="txtLogPassword" runat="server" Height="30px" Width="176px"></asp:TextBox>
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLogPassword" ErrorMessage="Password is required" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
          <br />
          <br />
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" OnClick="Login_Button" Text="Login" Width="99px" />
          <asp:Button ID="Button2" runat="server" CssClass="btn btn-secondary" OnClick="Register_Button" Text="Register" Width="107px" CausesValidation="False" />
          <br />
          <br />
          &nbsp;
          <br />
          <br />
          <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
          <br />
          <br />
     </div>
    
    </div>
</div>
        </asp:Panel>
        
    </form>

    <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
</asp:PlaceHolder>
</body>
</html>
