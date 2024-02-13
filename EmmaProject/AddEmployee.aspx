<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddEmployee.aspx.cs" Inherits="EmmaProject.AddEmployee" %>

<asp:Content ID="Employee" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5 employee-details-container" style="height: 426px">
        <h2 class="mt-3 mb-4 text-center">Add Employee</h2>
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
        <hr />
        <asp:Panel ID="sideNav" runat="server">
            <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
        </asp:Panel>
        <div class="row border rounded p-4">
           
                    <div class="form-group">
                        <label for="empFirst">First Name:</label>
    <asp:TextBox ID="empFirstTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="empLast">Last Name:</label>
                        <asp:TextBox ID="empLastTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group" style="height: 40px">
                        <label for="posID">Position:</label>
                        <asp:DropDownList ID="DropDownListEmployee" runat="server" DataSourceID="ObjectDataSource4"
    DataTextField="posName" DataValueField="id" CssClass="form-control" AutoPostBack="True">
</asp:DropDownList>
                    </div>
                    <div class="form-group text-center">
                        <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-primary" Text="ADD" OnClick="insertEmployee_Click" />
                    </div>
             
            <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Button style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
        <br />
        <br />
        <br />

                               <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.positionTableAdapter" UpdateMethod="Update">
                                   <DeleteParameters>
                                       <asp:Parameter Name="Original_id" Type="Int32" />
                                   </DeleteParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="posName" Type="String" />
                                   </InsertParameters>
                                   <UpdateParameters>
                                       <asp:Parameter Name="posName" Type="String" />
                                       <asp:Parameter Name="Original_id" Type="Int32" />
                                   </UpdateParameters>
                </asp:ObjectDataSource>

    </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
