<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Inventory.aspx.cs" Inherits="EmmaProject.Inventory" %>

<asp:Content ID="inventory" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
        <div style="height: 199px; margin-top: 4px;">
            <h2 style="text-align:center; font-size: 40px;"><strong>INVENTORY DETAILS</strong></h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 143px" Width="1010px" Height="221px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Inventory Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invSize" HeaderText="Inventory Size" SortExpression="invSize" />
                    <asp:BoundField DataField="invMeasure" HeaderText="Inventory Measure" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="Inventory Price" SortExpression="invPrice" />
                    <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
                    <asp:TemplateField HeaderText="Product">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="prodName" DataValueField="id" SelectedValue='<%# Bind("productID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="prodName" DataValueField="id" SelectedValue='<%# Bind("productID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

             <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.productTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_prodName" Type="String" />
                    <asp:Parameter Name="Original_prodDescription" Type="String" />
                    <asp:Parameter Name="Original_prodBrand" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="prodName" Type="String" />
                    <asp:Parameter Name="prodDescription" Type="String" />
                    <asp:Parameter Name="prodBrand" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="prodName" Type="String" />
                    <asp:Parameter Name="prodDescription" Type="String" />
                    <asp:Parameter Name="prodBrand" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_prodName" Type="String" />
                    <asp:Parameter Name="Original_prodDescription" Type="String" />
                    <asp:Parameter Name="Original_prodBrand" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.inventoryTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                    <asp:Parameter Name="Original_invSize" Type="Decimal" />
                    <asp:Parameter Name="Original_invMeasure" Type="String" />
                    <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                    <asp:Parameter Name="Original_productID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="invQuantity" Type="Int32" />
                    <asp:Parameter Name="invSize" Type="Decimal" />
                    <asp:Parameter Name="invMeasure" Type="String" />
                    <asp:Parameter Name="invPrice" Type="Decimal" />
                    <asp:Parameter Name="productID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="invQuantity" Type="Int32" />
                    <asp:Parameter Name="invSize" Type="Decimal" />
                    <asp:Parameter Name="invMeasure" Type="String" />
                    <asp:Parameter Name="invPrice" Type="Decimal" />
                    <asp:Parameter Name="productID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                    <asp:Parameter Name="Original_invSize" Type="Decimal" />
                    <asp:Parameter Name="Original_invMeasure" Type="String" />
                    <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                    <asp:Parameter Name="Original_productID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>

        </div>
</asp:Content>

