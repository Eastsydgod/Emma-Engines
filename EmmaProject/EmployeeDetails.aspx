<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="EmployeeDetails.aspx.cs" Inherits="EmmaProject.EmployeeDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">




   <div class="container my-5 employee-details-container">
    <h2 class="mt-3 mb-4 text-center">Employee Details</h2>
    <hr />
    <asp:Panel ID="Panel1" runat="server">
        <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
    </asp:Panel>
    <div class="row border rounded p-4">
        <div class="auto-style8">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource1"
                BackColor="#f8f9fa" BorderColor="#d6d8db" BorderStyle="Solid" BorderWidth="2px" CellPadding="4"
                CellSpacing="2" ForeColor="#495057" GridLines="Both" Width="36%" CssClass="auto-style7" Height="309px" style="margin-left: 390px">

                <EditItemTemplate>
                    <div class="form-group">
                        <label for="empFirst">First Name:</label>
                        <asp:TextBox ID="empFirstTextBox" runat="server" Text='<%# Bind("empFirst") %>' CssClass="form-control" />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="empLast">Last Name:</label>
                        <asp:TextBox ID="empLastTextBox" runat="server" Text='<%# Bind("empLast") %>' CssClass="form-control" />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="posID">Position:</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>' CssClass="form-control">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group text-center">
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update" CssClass="btn btn-primary" />
                        &nbsp;
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel" CssClass="btn btn-secondary" />
                    </div>
                </EditItemTemplate>

                <InsertItemTemplate>
                   
                    <div class="form-group">
                        <label for="empFirst">First Name:</label>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("empFirst") %>' CssClass="form-control" />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="empLast">Last Name:</label>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("empLast") %>' CssClass="form-control" />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="posID">Position:<br /> </label>
                        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>' CssClass="form-control">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group text-center">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"
                            CssClass="btn btn-success" />
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel" CssClass="btn btn-secondary" />
                    </div>
                </InsertItemTemplate>

                <ItemTemplate>
                  
                    <div class="form-group">
                        <label for="empFirst" style="font-family: Calibri; background-color: #FFFFFF; background-repeat: repeat; background-position: center; border: medium solid #000000; margin: auto; width: 111px; overflow: hidden; list-style-type: disc; font-size: large; font-weight: bold; text-align: center;">First Name:</label>&nbsp;
                        <asp:Label ID="empFirstLabel" runat="server" Text='<%# Bind("empFirst") %>' CssClass="form-control-static" />
                        <br />
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="empLast" style="font-family: Calibri; font-size: large; font-weight: bold; background-color: #FFFFFF; border-style: solid; border-width: medium; padding: inherit; margin: auto; width: 107px;">Last Name:</label>
                        &nbsp;
                        <asp:Label ID="empLastLabel" runat="server" Text='<%# Bind("empLast") %>' CssClass="form-control-static" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group">
                        <label for="posID" style="font-family: Calibri; font-size: large; font-weight: bold; background-color: #FFFFFF; border-style: solid; border-width: medium; padding: inherit; margin: auto; width: 104px;">Position:<br /> </label>
                        &nbsp;<br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>' CssClass="form-control" Enabled="false">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="form-group text-center">
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"
                            CssClass="btn btn-primary" />
                        &nbsp;&nbsp;
                       
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New"
                            CssClass="btn btn-success" />
                    </div>
                </ItemTemplate>

                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" CssClass="form-group" />
            </asp:FormView>
        </div>
    </div>
        <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
</div>


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

                <br />

                              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.employeeUpdateTableAdapter" UpdateMethod="Update">
                   <DeleteParameters>
    <asp:Parameter Name="Original_id" Type="Int32" />
</DeleteParameters>
<InsertParameters>
    <asp:Parameter Name="empFirst" Type="String" />
    <asp:Parameter Name="empLast" Type="String" />
    <asp:Parameter Name="posID" Type="Int32" />
</InsertParameters>
<SelectParameters>
    <asp:SessionParameter Name="Param1" SessionField="EmployeeID" Type="Int32" />
</SelectParameters>
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
</asp:Content>
