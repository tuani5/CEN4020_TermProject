<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 800px;
            height: 600px;
            display: block;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


    <header>Toyota Vehicle Tracking System</header>
           
    <div>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox_userid" runat="server" TabIndex="1"></asp:TextBox>
                </td>
                <td>

                </td>
                <td>
                    <asp:TextBox ID="TextBox_password" runat="server" TabIndex="2" TextMode="Password"></asp:TextBox>
                </td>
                <td></td>
                <td><asp:Button ID="Button_ok" runat="server" Text="Login" TabIndex="0" OnClick="Button_ok_Click" /></td><td></td>
                <td><asp:Label ID="Label_output" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="User id"></asp:Label></td>
                <td></td>
                <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>                
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
