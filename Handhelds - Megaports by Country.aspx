<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Handhelds - Megaports by Country.aspx.cs" Inherits="Handhelds___Megaports_by_Country" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Handhelds - Megaports</title>
</head>
<body>
    <form id="form1" runat="server">
     <div align="center"> 
        <br />
        <strong><span style="color: red">Handhelds - Megaports<br />
        </span>
        </strong>
        <br />   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Country" 
                    DataNavigateUrlFormatString="~/Handhelds - Megaports by Country Site.aspx?Country={0}" 
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
                <asp:BoundField DataField="RIID" HeaderText="RIID" SortExpression="RIID" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Survey_Meters" HeaderText="Survey Meters" 
                    SortExpression="Survey_Meters" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Misc" HeaderText="Misc" SortExpression="Misc" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/GeRTA Metadata Repository.mdb" 
            SelectCommand="SELECT [Country], [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - Megaports by Country] ORDER BY [Country]">
        </asp:AccessDataSource>
         <p><br />
     <asp:Button ID="Button2" runat="server" Text="Export Results to Excel" 
            onclick="btnExport_Click" 
            style="text-align: center; color: #000000; background-color: #FFFF99;" 
            BorderStyle="Double" Font-Bold="True" />
    <p>    
    </div>
    </form>
</body>
</html>
