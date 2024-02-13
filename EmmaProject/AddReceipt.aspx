<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddReceipt.aspx.cs" Inherits="EmmaProject.AddReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
    <div class="modal fade" id="validationModal" tabindex="-1" role="dialog" aria-labelledby="validationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="validationModalLabel">Validation Error</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="validationMessage"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
    <div class="container my-5">
        <h2 class="mt-3 mb-4 text-center">Add Receipt</h2>
        <hr />

        <div class="row border rounded p-4">
            <div class="col-md-6" style="text-align: left; margin: 0 auto; height: 391px;">
                <asp:Label ID="lblReceiptMessage" runat="server" Text="Message" CssClass="text-danger"></asp:Label>

                <div class="form-group">
                    <label for="ordNumber">Order Number:</label>
                    <asp:TextBox ID="ordNumberTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ordDate">Order Date:</label>
                    <asp:TextBox ID="ordDateTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ordPaid">Order Paid:</label>
                    <asp:CheckBox ID="ordPaidCheckBox" runat="server" />
                </div>
                <div class="form-group">
                    <label for="Payment">Payment:</label>
                    <asp:DropDownList ID="DropDownListPayment" runat="server" DataSourceID="ObjectDataSource5"
                        DataTextField="payType" DataValueField="id" CssClass="form-control" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="Customer">Customer:</label>
                    <asp:DropDownList ID="DropDownListCustomer" runat="server" DataSourceID="ObjectDataSource3"
                        DataTextField="custFirst" DataValueField="id" CssClass="form-control" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="Employee">Employee:</label>
                    <asp:DropDownList ID="DropDownListEmployee" runat="server" DataSourceID="ObjectDataSource6"
                        DataTextField="empFirst" DataValueField="id" CssClass="form-control" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnAddReceipt" runat="server" OnClick="btnAddReceipt_Click" Text="Add Receipt"
                        CssClass="btn btn-success" />
                    <asp:Button ID="btnCancel" runat="server" OnClientClick="goBack(); return false;" Text="Cancel"
                        CssClass="btn btn-secondary" />

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

                </div>
            </div>
        </div>
    </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
