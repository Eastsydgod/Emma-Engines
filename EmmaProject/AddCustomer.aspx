<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddCustomer.aspx.cs" Inherits="EmmaProject.AddCustomer" %>

<asp:Content ID="inventory" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5 customer-details-container">
        <h2 class="mt-3 mb-4 text-center">Add Customer</h2>
        <hr />
        <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>

        <!-- Add this modal structure inside your Content tag -->
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

        <div class="row border rounded p-4">

            <div class="col-md-6 mx-auto">
                <strong>
                <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" Width="30%" Height="580px" style="margin-right: 0px" CssClass="mx-auto" >

                    <InsertItemTemplate>
                        <asp:Label ID="firstLabel2" runat="server" Text="First Name" ></asp:Label>
                        :<br />
                        <asp:TextBox ID="custFirstTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="firstLabel3" runat="server" Text="Last Name" ></asp:Label>
                        :<br />
                        <asp:TextBox ID="custLastTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="phoneLabel" runat="server" Text="Phone"></asp:Label>
                        :<br />
                        <asp:TextBox ID="custPhoneTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="firstLabel" runat="server" Text="City"></asp:Label>
                        :<br />
                        <asp:TextBox ID="custCityTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="firstLabel0" runat="server" Text="Postal"></asp:Label>
                        :<br />
                        <asp:TextBox ID="custPostalTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                        :<br />
                        <asp:TextBox ID="custEmailTextBox" runat="server" Width="580px"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnInsert" runat="server" CssClass="accordion-flush" Font-Bold="True" ForeColor="#990000" style="margin-left: 50px" Text="ADD" OnClick="insertCustomer_Click" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="firstLabel2" runat="server" Text="First Name"></asp:Label>
                        :<br />
                        <asp:Label ID="custFirst" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="firstLabel3" runat="server" Text="Last Name"></asp:Label>
                        :<br />
                        <asp:Label ID="custLast" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="phoneLabel" runat="server" Text="Phone"></asp:Label>
                        :<br />
                        <asp:Label ID="custPhone" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="firstLabel" runat="server" Text="City"></asp:Label>
                        :<br />
                        <asp:Label ID="custCity" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="firstLabel0" runat="server" Text="Postal"></asp:Label>
                        :<br />
                        <asp:Label ID="custPostal" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                        :<br />
                        <asp:Label ID="custEmail" runat="server"></asp:Label>
                    </ItemTemplate>


                    <RowStyle CssClass="form-group" />
                </asp:FormView>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="col-md-6 my-auto text-center">
                <asp:Label ID="lblMessage" runat="server" Text="Info" Visible="False" AutoPostBack="true" CssClass="text-danger"></asp:Label>
            </div>
             
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
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

        </div>
        <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
    </div>
<br />
<br />
<br />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>