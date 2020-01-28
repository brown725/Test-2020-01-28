<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GeRTA Physical Data Model to PNNL SOR tables.aspx.cs" Inherits="GeRTA_Physical_Data_Model_to_PNNL_SOR_tables" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GeRTA Physical Data Model to PNNL SOR tables</title>
</head>
<body>
    <form id="form1" runat="server">
      <div align="center"> 
        <br />
        <strong><span style="color: red">GeRTA Physical Data Model to PNNL SOR tables<br />
        </span>
        </strong>
        <br /> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="GeRTA Table" HeaderText="GeRTA Table" 
                    SortExpression="GeRTA Table" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="GeRTA Data Field" HeaderText="GeRTA Data Field" 
                    SortExpression="GeRTA Data Field" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="GeRTA Data Type" HeaderText="GeRTA Data Type" 
                    SortExpression="GeRTA Data Type" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="SOR Table" HeaderText="SOR Table" 
                    SortExpression="SOR Table" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="SOR Data Field" HeaderText="SOR Data Field" 
                    SortExpression="SOR Data Field" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="SOR Data Type" HeaderText="SOR Data Type" 
                    SortExpression="SOR Data Type" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="TableSeq" HeaderText="TableSeq" 
                    SortExpression="TableSeq" Visible="False" />
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
            
              SelectCommand="SELECT * FROM [GeRTA Physical Data Model to PNNL SOR tables] ORDER BY [GeRTA Table], [TableSeq]">
        </asp:AccessDataSource>
  <p>  
 <br />
     <asp:Button ID="Button2" runat="server" Text="Export Results to Excel" 
            onclick="btnExport_Click" 
            style="text-align: center; color: #000000; background-color: #FFFF99;" 
            BorderStyle="Double" Font-Bold="True" />
         <p>  
      <br />   
    </div>
    </form>
</body>
</html>
