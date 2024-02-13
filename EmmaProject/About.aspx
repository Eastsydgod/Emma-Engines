<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EmmaProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" style="text-align: center; padding: 20px;">
        <h1 id="title" style="font-size: 24px; margin-bottom: 20px;"><%: Title %></h1>
        <h3 style="font-size: 20px;">Rapid Application Development</h3>
        <div>
            <img src="../Images/CEO.jpg" alt="CEO Image" style="width: 350px; height: 350px; border-radius: 50%; margin-top: 20px;" />
            <h2 style="margin-top: 20px; color:aliceblue; font-size: 20px; position: absolute;right: 760px; bottom: 110px; text-align: center; ">
                <strong>This Application was done by Emmanuel James. NC-2025.<br />S/O to Professor Peter Vanscoy</strong>
            </h2>
        </div>
        <asp:Button style="margin: 20px auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
    </main>
</asp:Content>

