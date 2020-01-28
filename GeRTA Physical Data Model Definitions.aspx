<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GeRTA Physical Data Model Definitions.aspx.cs" Inherits="GeRTA_Physical_Data_Model_Definitions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GeRTA Physical Data Model Definitions</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"> 
        <br />
        <strong><span style="color: red">GeRTA Physical Data Model Definitions<br />
        </span>
        </strong>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="AccessDataSource1" Width="1131px" >
            <Columns>
                <asp:BoundField DataField="GeRTA SQL Table" HeaderText="GeRTA SQL Table" 
                    SortExpression="GeRTA SQL Table" >
                <HeaderStyle VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="GeRTA SQL Field Name" 
                    HeaderText="GeRTA SQL Field Name" SortExpression="GeRTA SQL Field Name" >
                <HeaderStyle VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                </asp:BoundField>
                <asp:BoundField DataField="GeRTA SQL Data Type" 
                    HeaderText="GeRTA SQL Data Type" SortExpression="GeRTA SQL Data Type" >
                <HeaderStyle VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Data Field Description" 
                    HeaderText="Data Field Description" 
                    SortExpression="Data Field Description" >
                <HeaderStyle VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/GeRTA Metadata Repository.mdb" 
            SelectCommand="SELECT * FROM [GeRTA Physical Data Model]">
        </asp:AccessDataSource>
    <p>  
 <br />
     <asp:Button ID="Button2" runat="server" Text="Export Results to Excel" 
            onclick="btnExport_Click" 
            style="text-align: center; color: #000000; background-color: #FFFF99;" 
            BorderStyle="Double" Font-Bold="True" />
         <p>  
             &nbsp;<p>  
            &nbsp;<p>  
            &nbsp;<p>    
    </div>
    </form>
</body>
</html>
