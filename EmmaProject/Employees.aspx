<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmmaProject.Employees" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6">
                <label for="employeeDDL">Select Employee:</label>
                <asp:DropDownList ID="employeeDDL" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Fullname" DataValueField="id" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-6">
                <h2>Employee Details</h2>
                <asp:GridView ID="firstEmployeeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource2" CssClass="table table-bordered table-striped" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="firstEmployeeGridView_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
    <asp:CommandField ButtonType="Button" ShowSelectButton="True"  />
                        <asp:TemplateField HeaderText="Employee ID" InsertVisible="False" SortExpression="id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
    <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
    <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
    <asp:BoundField DataField="Position ID" HeaderText="Position ID" SortExpression="Position ID" />
    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
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
                        <div style="background-color: aliceblue; border: 2px solid black">
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30px" Text="Click on this button to view your inventory."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button0" runat="server" BackColor="#00CCFF" BorderColor="#6666FF" BorderStyle="Groove" CssClass="accordion-header" OnClick="redirect_Click" Text="View" />
        </div>
                  <div style="position: absolute; top: 332px; left: 1077px;">
    <asp:Button ID="Button1" runat="server" Text="ADD EMPLOYEE" CssClass="me-0" Height="38px" Width="145px" OnClick="addEmployee_Click" />
</div>
            </div>
        </div>
         <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />

    </div>
    <asp:Panel ID="positionPanel" runat="server" Height="86px">
         <h2>&nbsp;</h2>
        <br />
    </asp:Panel>
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
    <br />
    <br />
    <br />
            <div class="col-md-6">
                <h2>Employee Receipts</h2>
                <asp:GridView ID="employeeReceiptGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource3" CssClass="table table-bordered table-striped" CellPadding="4" ForeColor="#333333" GridLines="None " 
OnSelectedIndexChanged="employeeReceipt_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
      <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
      <asp:BoundField DataField="id" HeaderText="Receipt ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
      <asp:BoundField DataField="custFull" HeaderText="Customer Name" ReadOnly="True" SortExpression="custFull" />
      <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
      <asp:BoundField DataField="ordNumber" HeaderText="Order No" SortExpression="ordNumber" />
      <asp:BoundField DataField="formattedDateTime" HeaderText="Date" ReadOnly="True" SortExpression="formattedDateTime" />
      <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid" SortExpression="ordPaid" />
      <asp:BoundField DataField="payType" HeaderText="Payment" SortExpression="payType" />
      <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
      <asp:BoundField DataField="prodBrand" HeaderText="Manufacturer" SortExpression="prodBrand" />
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
            </div>
        <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="81px" style="margin-top: 0px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <br />
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.employeeTableAdapter"></asp:ObjectDataSource>
    <br />
 <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.employeeGridTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="employeeDDL" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaProjectLibary.EmmaDataSetTableAdapters.employeeCustomerGridTableAdapter">
    <SelectParameters>
        <asp:ControlParameter ControlID="employeeDDL" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
</asp:Content>
