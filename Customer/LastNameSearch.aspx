<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="LastNameSearch.aspx.cs" Inherits="Customer_NarrowSearch" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .LastName {
            
        }
    </style>
        <style type="text/css">
        .FirstName {
            padding-top: 10px;
        }
    </style>
    </style>
        <style type="text/css">
        .Button {
            padding-top: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <table>
        <tr>
            <td>1. Enter Last Name</td>
            <td>2. Choose First Name</td>
            <td>3. Click 'View'</td>
        </tr>
        <tr>
            <td class="LastName">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:ComboBox ID="ComboBox1" runat="server" AppendDataBoundItems="True" AutoCompleteMode="SuggestAppend" AutoPostBack="True" DataSourceID="SqlDataSourceLastName" DataTextField="Last_Name" DataValueField="Last_Name" MaxLength="0" style="display: inline;" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged"></asp:ComboBox>
                <asp:SqlDataSource ID="SqlDataSourceLastName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addresses]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ComboBox1" DefaultValue="0" Name="Last_Name" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="FirstName">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceFirstName" DataTextField="First_Name" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="172px">
                </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSourceFirstName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addresses] WHERE ([Last_Name] = @Last_Name)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ComboBox1" DefaultValue="0" Name="Last_Name" PropertyName="SelectedValue" />
                     </SelectParameters>


                
                </asp:SqlDataSource>
           
            </td>
            <td class="Button">
                <asp:Button ID="Button1" runat="server" Text="View" /></td>

                
        </tr>
        <tr>
            <asp:SqlDataSource ID="SqlDataSourceLastFirst" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addresses] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="-1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceLastFirst" AutoGenerateColumns="False" DataKeyNames="Id">
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
        </tr>
    </table>
</asp:Content>

