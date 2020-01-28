<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Handhelds Core Display.aspx.cs" Inherits="Handhelds_Core_Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Handhelds - Core - Selected Country</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:HyperLinkField DataNavigateUrlFields="Site" 
                    DataNavigateUrlFormatString="~/Site Equipment Summary2.aspx?Site={0}" 
                    DataTextField="Site" HeaderText="Site" Text="Site">
                <ControlStyle Font-Bold="False" Font-Underline="False" />
                <HeaderStyle HorizontalAlign="Left" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Program_Type" HeaderText="Program_Type" 
                    SortExpression="Program_Type"></asp:BoundField>
                <asp:BoundField DataField="Category_Type" HeaderText="Category_Type" 
                    SortExpression="Category_Type" />
                <asp:BoundField DataField="Backpacks" HeaderText="Backpacks" 
                    SortExpression="Backpacks" />
                <asp:BoundField DataField="Pagers" HeaderText="Pagers" 
                    SortExpression="Pagers" />
                <asp:BoundField DataField="RIID" HeaderText="RIID" 
                    SortExpression="RIID" />
                <asp:BoundField DataField="Survey_Meters" HeaderText="Survey_Meters" 
                    SortExpression="Survey_Meters" />
                <asp:BoundField DataField="Misc" HeaderText="Misc" 
                    SortExpression="Misc" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
            
            SelectCommand="SELECT [Country], [Site], [Program_Type], [Category Type] AS Category_Type, [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - Core Sites by Country ALL] WHERE ([Country] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Country" QueryStringField="Country" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
