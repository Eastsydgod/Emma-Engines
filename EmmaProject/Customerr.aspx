

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Customerr.aspx.cs" Inherits="EmmaProject.Customerr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 48px; margin-bottom: 11px"></div>
    <asp:Panel ID="sideNav" runat="server">
    <span style="font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Open</span>
</asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Height="361px" Width="1266px">
        <div class="container mt-3" >
           
<div class="container mt-4" style="position:absolute; top: 130px;">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title mb-4">Search for a Customer</h1>
                    <div class="input-group">
                        <asp:TextBox ID="txtTitleSearch" runat="server" CssClass="form-control" placeholder="Search by name, postal code, city, email, or phone number" Width="1263px"></asp:TextBox>
                        <div class="input-group-append">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" CssClass="btn btn-primary"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div style="border: 10px solid white; margin-top: 120px; ">
    <div  style="text-align:center; margin: 3px, 3px,3px,3px; margin-top: 5px;">
       
         <asp:Label ID="lblStatus" runat="server" Text="Info"  BackColor="White" BorderColor="#FF3300" BorderStyle="Dotted" CssClass="accordion-flush" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
    </div>
      
          <div class="row mt-3">
              <div class="col-md-12">
                  <asp:GridView ID="GridView1" runat="server" Width="1007px" BackColor="#66CCFF" CellPadding="4" CssClass="table table-bordered table-striped" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AutoGenerateColumns="False" DataKeyNames="id" style="margin-left: 84px; margin-top: 0px">
                 
                         <Columns>
                             <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
     <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" />
     <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
     <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
     <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
     <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
     <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                             <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
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
                  <div style="position: absolute; top: 332px; left: 1577px;">
                    <asp:Button ID="Button1" runat="server" Text="ADD CUSTOMER" CssClass="me-0" Height="38px" Width="145px" OnClick="addCustomer_Click" />
                </div>
                  <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div>
                      <h2 style="text-align:center; font:800; background-color:aliceblue;">Customer Receipt</h2>
                       <asp:GridView ID="receiptGridView" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-bordered table-striped" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="margin-left: 31px" Width="1177px" AutoGenerateColumns="False" DataKeyNames="id">
      
     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
     <Columns>
         <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
         <asp:BoundField DataField="id" HeaderText="Receipt ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
         <asp:BoundField DataField="ordNumber" HeaderText="Order No" SortExpression="ordNumber" />
         <asp:BoundField DataField="ordDate" HeaderText="Order Date" SortExpression="ordDate" />
         <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid" SortExpression="ordPaid" />
         <asp:BoundField DataField="paymentID" HeaderText="Payment ID" SortExpression="paymentID" />
         <asp:BoundField DataField="custID" HeaderText="Customer ID" SortExpression="custID" />
         <asp:BoundField DataField="empID" HeaderText="Employee ID" SortExpression="empID" />
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
                 
              </div>
              
          </div>
     <asp:Button   style="margin: 0 auto;" ID="btnBack" runat="server" OnClientClick="goBack(); return false;" Text="Back" CssClass="btn btn-secondary" />
      
 
    
</div>
                  <div class="row mt-3">
             
              <div class="col-md-12 mt-3" style="height: 104px">
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
          </div>
       </div>  
    </asp:Panel>
</asp:Content>
