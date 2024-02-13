<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="receipt.aspx.cs" Inherits="EmmaProject.receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
    <div class="container my-5">
        <h2 class="mt-3 mb-4 text-center">Receipt Details</h2>
        <hr />

        <div class="row border rounded p-4" style="height: 510px">
            <div class="col-md-6" style="text-align: left; height: 437px; width: 75%; margin: 0 auto;">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource1" Height="299px" style="margin-left: 227px"  Width="387px">
                    <EditItemTemplate>
                        <div class="form-group">
                            <label for="ordNumber">Order Number:</label>
                            <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="ordDate">Order Date:</label>
                            <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="ordPaid">Order Paid:</label>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' />
                        </div>
                        <div class="form-group">
                            <label for="Payment">Payment:</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource5" DataTextField="payType" DataValueField="id" SelectedValue='<%# Bind("paymentID") %>' CssClass="form-  control">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="Customer">Customer:</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource3" DataTextField="custFirst" DataValueField="id" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="Employee">Employee:</label>
                            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource6" DataTextField="empFirst" DataValueField="id" SelectedValue='<%# Bind("empID") %>' CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </div>
                    </EditItemTemplate>
                    <InsertItemTemplate>
        <div class="form-group">
            <label for="ordNumber">Order Number:</label>
            <asp:TextBox ID="ordNumberTextBox0" runat="server" Text='<%# Bind("ordNumber") %>' CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="ordDate">Order Date:</label>
            <asp:TextBox ID="ordDateTextBox0" runat="server" Text='<%# Bind("ordDate") %>' CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="ordPaid">Order Paid:</label>
            <asp:CheckBox ID="ordPaidCheckBox0" runat="server" Checked='<%# Bind("ordPaid") %>' />
        </div>
        <div class="form-group">
            <label for="Payment">Payment:</label>
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource5" DataTextField="payType" DataValueField="id" SelectedValue='<%# Bind("paymentID") %>' CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="Customer">Customer:</label>
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="custFirst" DataValueField="id" SelectedValue='<%# Bind("custID") %>' CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="Employee">Employee:</label>
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource6" DataTextField="empFirst" DataValueField="id" SelectedValue='<%# Bind("empID") %>' CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="form-group">

            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
        </div>
    </InsertItemTemplate>
    <ItemTemplate>
        <div class="form-group">
            <label for="id">ID:</label>
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' CssClass="form-control-static" />
        </div>
        <div class="form-group">
            <label for="ordNumber">Order Number:</label>
            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Bind("ordNumber") %>' CssClass="form-control-static" />
        </div>
        <div class="form-group">
            <label for="ordDate">Order Date:</label>
            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Bind("ordDate") %>' CssClass="form-control-static" />
        </div>
        <div class="form-group">
            <label for="ordPaid">Order Paid:</label>
            <asp:CheckBox ID="ordPaidCheckBox1" runat="server" Checked='<%# Bind("ordPaid") %>' Enabled="false" />
        </div>
        <div class="form-group">
            <label for="Payment">Payment:</label>
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource5" DataTextField="payType" DataValueField="id" SelectedValue='<%# Bind("paymentID") %>' CssClass="form-control" Enabled="false">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="Customer">Customer:</label>
            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="custFirst" DataValueField="id" SelectedValue='<%# Bind("custID") %>' CssClass="form-control" Enabled="false">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="Employee">Employee:</label>
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource6" DataTextField="empFirst" DataValueField="id" SelectedValue='<%# Bind("empID") %>' CssClass="form-control" Enabled="false">
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" />
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success" />
        </div>
    </ItemTemplate>
                </asp:FormView>
                <asp:Button ID="btnAddReceipt" runat="server" Font-Bold="True" OnClick="addReceipt_Click" Text="ADD RECEIPT" />
            </div>

            <div class="col-md-6" style="height: 61px; margin-top: 170px;">
                <asp:Label ID="lblMessage" runat="server" Text="Message" CssClass="text-danger"></asp:Label>
            </div>
        </div>
         <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
    </div>

   <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
    TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.receipt1TableAdapter" UpdateMethod="Update">
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
    <SelectParameters>
        <asp:SessionParameter DefaultValue="ReceiptID" Name="Param1" SessionField="ReceiptID" Type="Int32" />
    </SelectParameters>
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

<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
    TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="custFirst" Type="String" />
        <asp:Parameter Name="custLast" Type="String" />
        <asp:Parameter Name="custPhone" Type="String" />
        <asp:Parameter Name="custCity" Type="String" />
        <asp:Parameter Name="custPostal" Type="String" />
        <asp:Parameter Name="custEmail" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="custFirst" Type="String" />
        <asp:Parameter Name="custLast" Type="String" />
        <asp:Parameter Name="custPhone" Type="String" />
        <asp:Parameter Name="custCity" Type="String" />
        <asp:Parameter Name="custPostal" Type="String" />
        <asp:Parameter Name="custEmail" Type="String" />
        <asp:Parameter Name="Original_id" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>

<asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
    TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.employeeLookupTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="empFirst" Type="String" />
        <asp:Parameter Name="empLast" Type="String" />
        <asp:Parameter Name="posID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="empFirst" Type="String" />
        <asp:Parameter Name="empLast" Type="String" />
        <asp:Parameter Name="posID" Type="Int32" />
        <asp:Parameter Name="Original_id" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>

<asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
    TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.paymentTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id" Type="Int32" />
        <asp:Parameter Name="Original_payType" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="payType" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="payType" Type="String" />
        <asp:Parameter Name="Original_id" Type="Int32" />
        <asp:Parameter Name="Original_payType" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>


</asp:Content>
