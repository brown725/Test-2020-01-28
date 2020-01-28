<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Handhelds - Country Rollup.aspx.cs" Inherits="Handhelds___Country_Rollup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Handhelds - Rollup by Country</title>
</head>
<body>
    <form id="form1" runat="server">
     <div align="center"> 
        <br />
        <strong><span style="color: red">Handhelds - Rollup by Country<br />
        </span>
        </strong>
        <br />   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CaptionAlign="Right" CellPadding="4" DataSourceID="AccessDataSource1" 
            Width="698px" PageSize="25" AllowPaging="True">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Country" 
                    DataNavigateUrlFormatString="~/Handhelds - All Sites by Country.aspx?Country={0}" 
                    DataTextField="Country" HeaderText="Country (Click for Country Details)" 
                    Text="Country">
                <ControlStyle Font-Underline="False" />
                <HeaderStyle Font-Underline="False" HorizontalAlign="Left" Wrap="False" />
                <ItemStyle Font-Underline="False" Wrap="False" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Backpacks" HeaderText="Backpacks" 
                    SortExpression="Backpacks" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Pagers" HeaderText="Pagers" 
                    SortExpression="Pagers" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="RIID" HeaderText="RIID" 
                    SortExpression="RIID" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Survey_Meters" HeaderText="Survey Meters" 
                    SortExpression="Survey_Meters" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Misc" HeaderText="Misc" 
                    SortExpression="Misc" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle ForeColor="#330099" BackColor="White" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/GeRTA Metadata Repository.mdb"           
            SelectCommand="SELECT [Country], [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - ALL by Country] ORDER BY [Country]">
        </asp:AccessDataSource>
          <p><br /><br />
     <asp:Button ID="Button2" runat="server" Text="Export Results to Excel" 
            onclick="btnExport_Click" 
            style="text-align: center; color: #000000; background-color: #FFFF99;" 
            BorderStyle="Double" Font-Bold="True" />
    <p>      
    </div>
    </form>
</body>
</html>
