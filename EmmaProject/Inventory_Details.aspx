<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory_Details.aspx.cs" MasterPageFile="~/Site.Master" Inherits="EmmaProject.Inventory_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4">Inventory Details</h2>
                                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" style="margin-left: 332px" Width="283px">
    <EditItemTemplate>
        Inventory&nbsp; ID:
        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
        <br />
        <br />
        Inventory&nbsp; Quantity:
        <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
        <br />
        <br />
        Inventory&nbsp; Size:
        <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
        <br />
        <br />
        Inventory&nbsp; Measure:
        <asp:TextBox ID="invMeasureTextBox0" runat="server" Text='<%# Bind("invMeasure") %>' />
        <br />
        <br />
        Inventory&nbsp; Price:
        <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
        <br />
        <br />
        Product ID:
        <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
        <br />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Inventory Quantity:
        <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
        <br />
        <br />
        Inventory Size:
        <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
        <br />
        <br />
        Inventory Measure:
        <asp:TextBox ID="invMeasureTextBox" runat="server" Text='<%# Bind("invMeasure") %>' />
        <br />
        <br />
        Inventory Price:
        <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
        <br />
        <br />
        Product ID:
        <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
        <br />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Inventory ID:
        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
        <br />
        <br />
        Inventory&nbsp; Quantity:
        <asp:Label ID="invQuantityLabel" runat="server" Text='<%# Bind("invQuantity") %>' />
        <br />
        <br />
        Inventory&nbsp; Size:
        <asp:Label ID="invSizeLabel" runat="server" Text='<%# Bind("invSize") %>' />
        <br />
        <br />
        Inventory&nbsp; Measure:
        <asp:Label ID="invMeasureLabel" runat="server" Text='<%# Bind("invMeasure") %>' />
        <br />
        <br />
        Inventory Price:
        <asp:Label ID="invPriceLabel" runat="server" Text='<%# Bind("invPrice") %>' />
        <br />
        <br />
        productID:
        <asp:Label ID="productIDLabel" runat="server" Text='<%# Bind("productID") %>' />
        <br />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
                    </div>
                      <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
                </div>
                <div class="mt-4 text-center">
                                  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.inventory1TableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="invQuantity" Type="Int32" />
        <asp:Parameter Name="invSize" Type="Decimal" />
        <asp:Parameter Name="invMeasure" Type="String" />
        <asp:Parameter Name="invPrice" Type="Decimal" />
        <asp:Parameter Name="productID" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="Param1" SessionField="InventoryID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="invQuantity" Type="Int32" />
        <asp:Parameter Name="invSize" Type="Decimal" />
        <asp:Parameter Name="invMeasure" Type="String" />
        <asp:Parameter Name="invPrice" Type="Decimal" />
        <asp:Parameter Name="productID" Type="Int32" />
        <asp:Parameter Name="Original_id" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
