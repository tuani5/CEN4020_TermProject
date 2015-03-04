<%@ Page Title="Modify Customer" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyCustomer.aspx.cs" Inherits="MasterPages_ModifyCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Addresses] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Addresses] ([Last_Name], [First_Name], [Address1], [Email], [City], [State], [Zip_Code]) VALUES (@Last_Name, @First_Name, @Address1, @Email, @City, @State, @Zip_Code)" SelectCommand="SELECT * FROM [Addresses]" UpdateCommand="UPDATE [Addresses] SET [Last_Name] = @Last_Name, [First_Name] = @First_Name, [Address] = @Address, [Email] = @Email, [City] = @City, [State] = @State, [Zip_Code] = @Zip_Code WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Address" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource><p></p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
    
           
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
    </asp:GridView><p></p>
</asp:Content>

