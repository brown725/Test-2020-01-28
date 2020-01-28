<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GeRTA Data Model Data Field Definitions.aspx.cs" Inherits="GeRTA_Data_Model_Data_Field_Definitions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GeRTA Data Model Data Field Definitions</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"> 
        <br />
        <strong><span style="color: red">GeRTA Data Model Data Field Definitions<br />
        </span>
        </strong>
        <br />      
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="25"
    DataSourceID="AccessDataSource1" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            Width="1131px">
    <Columns>
        <asp:BoundField DataField="Data Model Table" HeaderText="Data Model Table Name" ReadOnly="True" 
            SortExpression="Data Model Table" >
        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="False" />
        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
        </asp:BoundField>
        <asp:BoundField DataField="Data Model Data Field" HeaderText="Data Field" 
            SortExpression="Data Model Data Field" >
        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
        </asp:BoundField>
        <asp:BoundField DataField="Data Type" HeaderText="Data Type" 
            SortExpression="Data Type" >
        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
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
                <asp:BoundField DataField="Data Field Description" HeaderText="Description" 
                    SortExpression="Data Field Description" >
                <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Bottom" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="True" />
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
            SelectCommand="SELECT * FROM [NSDD Data Model data fields and definitions2]">
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
