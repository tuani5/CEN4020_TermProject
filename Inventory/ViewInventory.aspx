<%@ Page Title="View Customer" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ViewInventory.aspx.cs" Inherits="Customer_ViewCustomer" %>

<asp:Content ID="Content_Inventory_1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content_Inventory_2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
    <p></p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StockId" DataSourceID="SqlDataSource1">
        <Columns>
         
           
            <asp:BoundField DataField="StockId" HeaderText="StockId" SortExpression="StockId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="EngineCapacity" HeaderText="EngineCapacity" SortExpression="EngineCapacity" />
            <asp:BoundField DataField="Transmision" HeaderText="Transmission" SortExpression="Transmision" />
            <asp:BoundField DataField="PowerSteering" HeaderText="PowerSteering" SortExpression="PowerSteering" />
            <asp:BoundField DataField="AntiBrake" HeaderText="AntiBrake" SortExpression="AntiBrake" />
            <asp:BoundField DataField="ServiceIndicator" HeaderText="ServiceIndicator" SortExpression="ServiceIndicator" />
            <asp:BoundField DataField="AudioSystem" HeaderText="AudioSystem" SortExpression="AudioSystem" />
            <asp:BoundField DataField="KeylessEntry" HeaderText="KeylessEntry" SortExpression="KeylessEntry" />
            <asp:BoundField DataField="CruiseControl" HeaderText="CruiseControl" SortExpression="CruiseControl" />
            <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
            <asp:BoundField DataField="Packages" HeaderText="Packages" SortExpression="Packages" />
        </Columns>
    </asp:GridView>
    <p></p>
</asp:Content>

