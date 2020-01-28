<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Handhelds - Megaports by Country Site.aspx.cs" Inherits="Handhelds___Megaports_by_Country_Site" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Handhelds - Megaports by Country Site</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"> 
        <br />
        <strong><span style="color: red">Handhelds - Megaports by Country Site<br />
        </span>
        </strong>
        <br />   
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:HyperLinkField DataNavigateUrlFields="Site" 
                    DataNavigateUrlFormatString="~/Site Equipment Summary.aspx?Site={0}" 
                    DataTextField="Site" HeaderText="Site (Click for Equipment)"
                    Text="Site">
                <ControlStyle Font-Bold="False" Font-Underline="False" />
                <HeaderStyle HorizontalAlign="Left" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Program_Type" HeaderText="Program Type" 
                    SortExpression="Program_Type">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Category_Type" HeaderText="Category Type" 
                    SortExpression="Category_Type" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
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
            SelectCommand="SELECT [Country], [Site], [Program_Type], [Category Type] AS Category_Type, [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - All Megaports2] WHERE ([Country] = ?)">
             <SelectParameters>
                <asp:QueryStringParameter Name="Country" QueryStringField="Country" 
                    Type="String" />
            </SelectParameters>
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