<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data Box Site Data Field List TEST01.aspx.cs" Inherits="Data_Box_Site_Data_Field_List_TEST01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Site Search - Site Details</title>
</head>
<body>
    <form id="form1" runat="server">
      <div align="center"> 
        <br />
        <strong><span style="color: red">Site Search - Site Details<br />
        </span>
        </strong>
        <br />
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
              DataSourceID="AccessDataSource1" DataTextField="Search" DataValueField="Search">
          </asp:DropDownList>
          <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
              DataFile="~/App_Data/GeRTA Metadata Repository.mdb" 
              SelectCommand="SELECT [Search] FROM [Drop-Down Site Search Workfile] ORDER BY [Search]">
          </asp:AccessDataSource>
          <br />
          <br />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  
              DataSourceID="AccessDataSource2" BackColor="White" BorderColor="#CC9966" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4">
              <Columns>
                  <asp:BoundField DataField="SiteDescription" HeaderText="Description" 
                      SortExpression="SiteDescription" >
                  <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                  <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                  </asp:BoundField>
                  <asp:BoundField DataField="SiteData" HeaderText="Details / Counts" 
                      SortExpression="SiteData" >
                  <HeaderStyle Width="420px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                  <ItemStyle Width="420px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                  </asp:BoundField>
                  <asp:BoundField DataField="seqnbr" HeaderText="seqnbr" 
                      SortExpression="seqnbr" Visible="False" />
                  <asp:BoundField DataField="Search" HeaderText="Search" ReadOnly="True" 
                      SortExpression="Search" Visible="False" />
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <RowStyle BackColor="White" ForeColor="#330099" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <SortedAscendingCellStyle BackColor="#FEFCEB" />
              <SortedAscendingHeaderStyle BackColor="#AF0101" />
              <SortedDescendingCellStyle BackColor="#F6F0C0" />
              <SortedDescendingHeaderStyle BackColor="#7E0000" />
          </asp:GridView>
          <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
              DataFile="~/App_Data/GeRTA Metadata Repository.mdb" 
              SelectCommand="SELECT [SiteDescription], [SiteData], [seqnbr], [Search] FROM [Data Box Site Data Field List2] WHERE ([Search] = ?) ORDER BY [Search], [seqnbr]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Search" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
          </asp:AccessDataSource>

    </div>
    </form>
</body>
</html>
