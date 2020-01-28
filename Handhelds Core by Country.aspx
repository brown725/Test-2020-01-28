<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Handhelds - Core</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataSourceID="AccessDataSource1" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Country" 
                    DataNavigateUrlFormatString="~/Handhelds-Core-Display3.aspx?Country={0}" 
                    DataTextField="Country" HeaderText="Country (Click for Country Details)" 
                    Text="Country">
                <ControlStyle Font-Underline="False" />
                <HeaderStyle Font-Underline="False" HorizontalAlign="Left" Wrap="False" />
                <ItemStyle Font-Underline="False" Wrap="False" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Backpacks" HeaderText="Backpacks" 
                    SortExpression="Backpacks">
                </asp:BoundField>
                <asp:BoundField DataField="Pagers" HeaderText="Pagers" SortExpression="Pagers">
                </asp:BoundField>
                <asp:BoundField DataField="RIID" HeaderText="RIID" 
                    SortExpression="RIID">
                </asp:BoundField>
                <asp:BoundField DataField="Survey_Meters" HeaderText="Survey Meters" 
                    SortExpression="Survey_Meters">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Misc" HeaderText="Misc" SortExpression="Misc">
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total Handhelds" 
                    SortExpression="Total">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
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
            DataFile="~/GeRTA Metadata Repository.accdb" 
            
            
            
            SelectCommand="SELECT [Country], [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - Core Sites by Country] ORDER BY [Country]"></asp:AccessDataSource>
    </p>
    <p>
    </form>
 </body>
</html>
