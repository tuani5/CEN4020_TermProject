<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="IdSearch.aspx.cs" Inherits="Customer_Default" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    Enter Id.
    <asp:ComboBox ID="ComboBox1" runat="server" AppendDataBoundItems="True" AutoCompleteMode="SuggestAppend" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" MaxLength="0" style="display: inline;" AutoPostBack="True" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged">
    </asp:ComboBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addresses]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addresses] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ComboBox1" DefaultValue="-1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip_Code" HeaderText="Zip_Code" SortExpression="Zip_Code" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
        </Columns>
    </asp:GridView>
    </br>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    </asp:Content>

