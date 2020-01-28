<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data Box Site Data Field Lat Long.aspx.cs" Inherits="Data_Box_Site_Data_Field_Lat_Long" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Nearest Sites by Latitude and Longitude - Site Details</title>
</head>
<body>
    <form id="form1" runat="server">
      <div align="center"> 
        <br />
        <strong><span style="color: red">Nearest Sites by Latitude and Longitude - Site Details<br />
        </span>
        </strong>
        <br />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
              DataSourceID="AccessDataSource2" BackColor="White" BorderColor="#CC9966" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4"
              EmptyDataText="NO RECORDS FOUND">
                <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
                  HorizontalAlign="Center" />
              <Columns>
                  <asp:BoundField DataField="Site" HeaderText="Site" 
                      SortExpression="Site" Visible="False" >
                  </asp:BoundField>
                  <asp:BoundField DataField="seqnbr" HeaderText="seqnbr" 
                      SortExpression="seqnbr" Visible="False" >
                  </asp:BoundField>
                  <asp:BoundField DataField="SiteDescription" HeaderText="Description" 
                      SortExpression="SiteDescription" >
                   <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                  <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                  </asp:BoundField>
                  <asp:BoundField DataField="SiteData" HeaderText="Details / Counts" 
                      SortExpression="SiteData" >
                  <HeaderStyle Width="420px" HorizontalAlign="Left" VerticalAlign="Bottom" 
                      Wrap="False" />
                 <ItemStyle Width="420px" HorizontalAlign="Left" VerticalAlign="Bottom" 
                      Wrap="False" />
                  </asp:BoundField>
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
              SelectCommand="SELECT * FROM [Data Box Site Data Field List3] WHERE ([Site] = ?) ORDER BY [Site], [seqnbr]">
             <SelectParameters>
                <asp:QueryStringParameter Name="column1" QueryStringField="column1" 
                    Type="String" />
            </SelectParameters> 
          </asp:AccessDataSource>
              <p><br /><br />
     <asp:Button ID="Button2" runat="server" Text="Export Results to Excel" 
            onclick="btnExport_Click" 
            style="text-align: center; color: #000000; background-color: #FFFF99;" 
            BorderStyle="Double" Font-Bold="True" />
    <p> 
       <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" Font-Bold="True"
            NavigateUrl="~/Nearest Sites by Latitude and Longitude.aspx" ForeColor="Red">Return to Nearest Sites by Latitude and Longitude</asp:HyperLink>    
    </div>
    </form>
</body>
</html>

