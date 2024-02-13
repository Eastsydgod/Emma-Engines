<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CustomerDetails.aspx.cs" Inherits="EmmaProject.CustomerDetails" %>

<asp:Content ID="inventory" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5 customer-details-container">
        <h2 class="mt-3 mb-4 text-center">Customer Details</h2>
        <hr />
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
        <div class="row border rounded p-4">

            <div>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource4"
                    BackColor="#f8f9fa" BorderColor="#d6d8db" BorderStyle="Solid" BorderWidth="2px" CellPadding="4"
                    CellSpacing="2" ForeColor="#495057" GridLines="Both" Width="100%">

                    <EditItemTemplate>
                        <div class="form-group">
                            <label for="custFirst">First Name:</label>
                            <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="custLast">Last Name:</label>
                            <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="custPhone">Phone:</label>
                            <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="custCity">City:</label>
                            <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="custPostal">Postal:</label>
                            <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="custEmail">Email:</label>
                            <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' CssClass="form-control" />
                        </div>
                        <div class="form-group text-center">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                Text="Update" CssClass="btn btn-primary" />
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                Text="Cancel" CssClass="btn btn-secondary" />
                        </div>
                    </EditItemTemplate>

                    <InsertItemTemplate>
    <div class="form-group">
        <label for="custFirst">First Name:</label>
        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("custFirst") %>' CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="custLast">Last Name:</label>
        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("custLast") %>' CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="custPhone">Phone:</label>
        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("custPhone") %>' CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="custCity">City:</label>
        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("custCity") %>' CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="custPostal">Postal:</label>
        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("custPostal") %>' CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="custEmail">Email:</label>
        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("custEmail") %>' CssClass="form-control" />
    </div>
    <div class="form-group text-center">
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"
            CssClass="btn btn-success" />
        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
            Text="Cancel" CssClass="btn btn-secondary" />
    </div>
</InsertItemTemplate>

<ItemTemplate>
    <div class="form-group">
        <label for="custFirst">First Name:</label>
        <asp:Label ID="custFirstLabel" runat="server" Text='<%# Bind("custFirst") %>' CssClass="form-control-static" />
        <br />
    </div>
    <div class="form-group">
        <label for="custLast">Last Name:</label>
        <asp:Label ID="custLastLabel" runat="server" Text='<%# Bind("custLast") %>' CssClass="form-control-static" />
        <br />
    </div>
    <div class="form-group">
        <label for="custPhone">Phone:</label>
        <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Bind("custPhone") %>' CssClass="form-control-static" />
        <br />
    </div>
    <div class="form-group">
        <label for="custCity">City:</label>
        <asp:Label ID="custCityLabel" runat="server" Text='<%# Bind("custCity") %>' CssClass="form-control-static" />
        <br />
    </div>
    <div class="form-group">
        <label for="custPostal">Postal:</label>
        <asp:Label ID="custPostalLabel" runat="server" Text='<%# Bind("custPostal") %>' CssClass="form-control-static" />
        <br />
    </div>
    <div class="form-group">
        <label for="custEmail">Email:</label>
        <asp:Label ID="custEmailLabel" runat="server" Text='<%# Bind("custEmail") %>' CssClass="form-control-static" />
        <br />
        <br />
    </div>
    <div class="form-group text-center">
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"
            CssClass="btn btn-primary" />
       
        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New"
            CssClass="btn btn-success" />
        
    </div>
</ItemTemplate>


                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" CssClass="form-group" />
                </asp:FormView>
            </div>

            <div class="col-md-6 my-auto text-center">
                <asp:Label ID="lblMessage" runat="server" Text="Info" Visible="False" AutoPostBack="true" CssClass="text-danger"></asp:Label>
            </div>
        </div>
         <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
    </div>
     <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.customer1TableAdapter" UpdateMethod="Update">
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
     <SelectParameters>
         <asp:SessionParameter Name="Param1" SessionField="CustomerID" Type="Int32" />
     </SelectParameters>
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
<br />
<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.receipt2LookupTableAdapter" UpdateMethod="Update">
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
        <asp:SessionParameter Name="Param1" SessionField="ReceiptID" Type="Int32" />
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
<br />
<br />
</asp:Content>