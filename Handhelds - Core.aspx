<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Handhelds - Core.aspx.cs" Inherits="Handhelds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="AccessDataSource1" DataKeyNames="Country" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Backpacks" HeaderText="Backpacks" 
                    SortExpression="Backpacks">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pagers" HeaderText="Pagers" SortExpression="Pagers">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="RIID" HeaderText="RIID" SortExpression="RIID">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Survey_Meters" HeaderText="Survey Meters" 
                    SortExpression="Survey_Meters">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Misc" HeaderText="Misc" SortExpression="Misc">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/GeRTA Metadata Repository.accdb" 
            
            
            SelectCommand="SELECT [Country], [Backpacks], [Pagers], [RIID], [Survey Meters] AS Survey_Meters, [Misc], [Total] FROM [Handhelds - Core by Country] ORDER BY [Country]"></asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="AccessDataSource2" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="Country_Name" HeaderText="Country" 
                SortExpression="Country_Name" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Program_Type" HeaderText="Program Type" 
                SortExpression="Program_Type" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Category Type" HeaderText="Category" 
                SortExpression="Category Type" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Category SubType" HeaderText="SubType" 
                SortExpression="Category SubType" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Model" HeaderText="Model" 
                SortExpression="Model" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="SerialNbr" HeaderText="Serial Nbr" 
                SortExpression="SerialNbr" />
            <asp:BoundField DataField="Use Status" HeaderText="Use Status" 
                SortExpression="Use Status" />
            <asp:BoundField DataField="FY Installed" HeaderText="FY Installed" 
                SortExpression="FY Installed" />
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
        DataFile="~/GeRTA Metadata Repository.accdb" 
        
        
        
        SelectCommand="SELECT [GeRTA Equipment file Combined].Country_Name, [GeRTA Equipment file Combined].Site, [Site Workfile].Program_Type, [GeRTA Equipment file Combined].[Category Type], [GeRTA Equipment file Combined].[Category SubType], [GeRTA Equipment file Combined].Model, [GeRTA Equipment file Combined].SerialNbr, [GeRTA Equipment file Combined].[Use Status], [GeRTA Equipment file Combined].[FY Installed] FROM ([GeRTA Equipment file Combined] INNER JOIN [Site Workfile] ON [GeRTA Equipment file Combined].[Site ID] = [Site Workfile].UID) WHERE ([Site Workfile].Program_Type LIKE 'core%') AND ([GeRTA Equipment file Combined].Country_Name = ?) AND ([GeRTA Equipment file Combined].[Category Type] = 'handheld') AND ([GeRTA Equipment file Combined].[Use Status] = 'installed') ORDER BY [GeRTA Equipment file Combined].Country_Name, [GeRTA Equipment file Combined].Site, [GeRTA Equipment file Combined].[Category Type], [GeRTA Equipment file Combined].[Category SubType], [GeRTA Equipment file Combined].Model, [GeRTA Equipment file Combined].SerialNbr">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue=""
                Name="Country" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:AccessDataSource>
    </form>
    </body>
</html>
