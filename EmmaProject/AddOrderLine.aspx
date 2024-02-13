        <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddOrderLine.aspx.cs" Inherits="EmmaProject.AddOrderLine" %>

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
        <h2 class="mt-3 mb-4 text-center">Add Order-Line</h2>
        <hr />

        <div class="row border rounded p-4">
            <div class="col-md-6" style="text-align: left; margin: 0 auto; height: 391px;">
                  
                 <asp:Label ID="lblReceiptMessage" runat="server" Text="Message" CssClass="text-danger"></asp:Label>
 <InsertItemTemplate>
                <div class="form-group">
                    <label for="orlPriceTextBox">Price:</label>
                   
                    <asp:TextBox ID="orlPriceTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
 <div class="form-group">
                    <label for="orlQuantityTextBox">Quantity:</label>
                  
<asp:TextBox ID="orlQuantityTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
<div class="form-group">
                    <label for="orlOrderReqCheckBox">Order Required:</label>
<asp:CheckBox ID="orlOrderReqCheckBox" runat="server" />
                   
                </div>
<div class="form-group">
                    <label for="orlNoteTextBox">Order Note:</label>
<asp:TextBox ID="orlNoteTextBox" runat="server" CssClass="form-control"></asp:TextBox>

                    
                </div>


<div class="form-group">
    <label for="inventoryIDTextBox">Inventory ID:</label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource3"
        DataTextField="invQuantity" DataValueField="id" CssClass="form-control" AutoPostBack="True">
    </asp:DropDownList>
</div>
            
<div class="form-group">
    <label for="receiptIDTextBox">Date:</label>
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource4"
        DataTextField="ordDate" DataValueField="id" CssClass="form-control" AutoPostBack="True">
    </asp:DropDownList>
</div>
           
                 <br />
                 <br />
           
              <asp:Button ID="btnAddReceipt" runat="server" OnClick="btnAddOrderLine_Click" Text="Add Receipt"
    CssClass="btn btn-success" style="margin-left: 62px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnBack" runat="server" CssClass="btn btn-secondary" OnClientClick="goBack(); return false;" style="margin: 0 auto;" Text="Back" />
                <br />
                <br />

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
                            <br />
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

            </InsertItemTemplate>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>