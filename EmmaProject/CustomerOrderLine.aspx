<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CustomerOrderLine.aspx.cs" Inherits="EmmaProject.CustomerOrderLine" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center display-4"><strong>ORDER LINE</strong></h2>
                <div class="card border-secondary mb-3">
                    <div class="card-body">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:FormView ID="orderLineFormView" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource2" CssClass="mt-4" style="margin-left: 337px; margin-bottom: 0px" Width="615px">
                                <EditItemTemplate>
                                    <div class="form-group">
                                        <label for="idLabel1">ID:</label>
                                        <asp:Label ID="idLabel1" runat="server" CssClass="form-control" Text='<%# Eval("id") %>' />
                                    </div>
                                    <div class="form-group">
                                        <label for="orlPriceTextBox">Price:</label>
                                        <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="orlQuantityTextBox">Quantity:</label>
                                        <asp:TextBox ID="orlQuantityTextBox" runat="server" Text='<%# Bind("orlQuantity") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="orlOrderReqCheckBox">Order Required:</label>
                                        <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Bind("orlOrderReq") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="orlNoteTextBox">Order Note:</label>
                                        <asp:TextBox ID="orlNoteTextBox" runat="server" Text='<%# Bind("orlNote") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="inventoryIDTextBox">Inventory ID:</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="invQuantity" DataValueField="id" SelectedValue='<%# Bind("inventoryID") %>'>
                                        </asp:DropDownList>
                                    </div>
				     <div class="form-group">
                                        <label for="receiptIDTextBox">Receipt ID:</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="ordDate" DataValueField="id" SelectedValue='<%# Bind("receiptID") %>'>
                                        </asp:DropDownList>
                                    </div>
                                   
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary">Update</asp:LinkButton>
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-secondary">Cancel</asp:LinkButton>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <div class="form-group">
                                        <label for="orlPriceTextBox">Price:</label>
                                        <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' CssClass="form-control" />
                                    </div>
				     <div class="form-group">
                                        <label for="orlQuantityTextBox">Quantity:</label>
                                        <asp:TextBox ID="orlQuantityTextBox" runat="server" Text='<%# Bind("orlQuantity") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="orlOrderReqCheckBox">Order Required:</label>
                                        <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Bind("orlOrderReq") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="orlNoteTextBox">Order Note:</label>
                                        <asp:TextBox ID="orlNoteTextBox" runat="server" Text='<%# Bind("orlNote") %>' CssClass="form-control" />
                                    </div>
				    <div class="form-group">
                                        <label for="inventoryIDTextBox">Inventory ID:</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="invQuantity" DataValueField="id" SelectedValue='<%# Bind("inventoryID") %>'>
                                        </asp:DropDownList>
                                    </div>
				                    <div class="form-group">
                                        <label for="receiptIDTextBox">
                                        Receipt ID:</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="ordDate" DataValueField="id" SelectedValue='<%# Bind("receiptID") %>'>
                                        </asp:DropDownList>
                                    </div>
                               
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success">Insert</asp:LinkButton>
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-secondary">Cancel</asp:LinkButton>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <div class="form-group">
                                        <label for="idLabel">ID:</label>
                                        <asp:Label ID="idLabel" runat="server" CssClass="form-control" Text='<%# Eval("id") %>' />
                                    </div>
                                    <div class="form-group">
                                        <label for="orlPriceLabel">Price:</label>
                                        <asp:Label ID="orlPriceLabel" runat="server" CssClass="form-control" Text='<%# Bind("orlPrice") %>' />
                                    </div>
				    <div class="form-group">
                                        <label for="orlQuantityLabel">Quantity:</label>
                                        <asp:Label ID="orlQuantityLabel" runat="server" CssClass="form-control" Text='<%# Bind("orlQuantity") %>' />
                                    </div>
				    <div class="form-group">
                                        <label for="orlOrderReqCheckBox">Order Required:</label>
                                        <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" CssClass="form-control" Checked='<%# Bind("orlOrderReq") %>' />
                                    </div>
				    <div class="form-group">
                                        <label for="orlNoteLabel">Order Note:</label>
                                        <asp:Label ID="orlNoteLabel" runat="server" CssClass="form-control" Text='<%# Bind("orlNote") %>' />
                                    </div>
				    <div class="form-group">
                                        <label for="receiptIDLabel">Inventory ID:</label>
                                        <asp:Label ID="receiptIDLabel" runat="server" CssClass="form-control" Text='<%# Bind("inventoryID") %>' />
                                    </div>
				    <div class="form-group">
                                        <label for="inventoryIDLabel">Receipt ID:</label>
                                        <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Bind("receiptID") %>' />
                                    </div>
                                   

                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-warning">Edit</asp:LinkButton>
                                    
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-success">New</asp:LinkButton>
                                </ItemTemplate>
                            </asp:FormView>

                             <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />

                            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.inventoryTableAdapter" UpdateMethod="Update">
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
                                <UpdateParameters>
                                    <asp:Parameter Name="invQuantity" Type="Int32" />
                                    <asp:Parameter Name="invSize" Type="Decimal" />
                                    <asp:Parameter Name="invMeasure" Type="String" />
                                    <asp:Parameter Name="invPrice" Type="Decimal" />
                                    <asp:Parameter Name="productID" Type="Int32" />
                                    <asp:Parameter Name="Original_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.receiptTableAdapter" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ordNumber" Type="String" />
                                    <asp:Parameter Name="ordDate" Type="DateTime" />
                                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                                    <asp:Parameter Name="paymentID" Type="Int32" />
                                    <asp:Parameter Name="custID" Type="Int32" />
                                    <asp:Parameter Name="empID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ordNumber" Type="String" />
                                    <asp:Parameter Name="ordDate" Type="DateTime" />
                                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                                    <asp:Parameter Name="paymentID" Type="Int32" />
                                    <asp:Parameter Name="custID" Type="Int32" />
                                    <asp:Parameter Name="empID" Type="Int32" />
                                    <asp:Parameter Name="Original_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>

                          <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.order_lineTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="orlPrice" Type="Decimal" />
        <asp:Parameter Name="orlQuantity" Type="Int32" />
        <asp:Parameter Name="orlOrderReq" Type="Boolean" />
        <asp:Parameter Name="orlNote" Type="String" />
        <asp:Parameter Name="inventoryID" Type="Int32" />
        <asp:Parameter Name="receiptID" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="Param1" SessionField="RecieptID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="orlPrice" Type="Decimal" />
        <asp:Parameter Name="orlQuantity" Type="Int32" />
        <asp:Parameter Name="orlOrderReq" Type="Boolean" />
        <asp:Parameter Name="orlNote" Type="String" />
        <asp:Parameter Name="inventoryID" Type="Int32" />
        <asp:Parameter Name="receiptID" Type="Int32" />
        <asp:Parameter Name="Original_id" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
