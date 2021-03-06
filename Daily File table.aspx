﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Daily File table.aspx.cs" Inherits="Daily_File_table" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GeRTA Data Model - Daily File Table</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"> 
        <br />
        <strong><span style="color: red">GeRTA Data Model - Daily File Table<br />
        </span>
        </strong>
        <br />   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="15" 
            DataSourceID="AccessDataSource1" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            Width="1131px">
            <Columns>
        <asp:BoundField DataField="Table" HeaderText="Table Name" ReadOnly="True" 
            SortExpression="Table" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                </asp:BoundField>
        <asp:BoundField DataField="Data Field" HeaderText="Data Field" 
            SortExpression="Data Field" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                </asp:BoundField>
        <asp:BoundField DataField="Data Type" HeaderText="Data Type" 
            SortExpression="Data Type" >
                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
                </asp:BoundField>
        <asp:BoundField DataField="Data Values" HeaderText="Data Values" 
            SortExpression="Data Values" Visible="False" />
        <asp:BoundField DataField="URL" HeaderText="URL" ReadOnly="True" 
            SortExpression="URL" Visible="False" />
        <asp:TemplateField HeaderText="Data Values (Click for Values)" >
             <ItemTemplate>
                 <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# GetUrl(Eval("URL"))%>' 
                     text='<%# Eval("Data Values") %>' font-underline="false"></asp:HyperLink>
             </ItemTemplate>
             <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
             <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" Font-Underline="False"></ItemStyle>
        </asp:TemplateField>
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" >
                <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Bottom" />
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
            SelectCommand="SELECT * FROM [Daily File table2]">
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
