<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assessment2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #CCCCCC">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 224px;
            margin-left: 83px;
        }
        .auto-style4 {
            width: 100%;
            height: 216px;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            text-align: center;
            width: 202px;
        }
        .auto-style7 {
            width: 213px;
        }
        .auto-style8 {
            width: 213px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 202px;
            height: 51px;
        }
        .auto-style10 {
            width: 213px;
            text-align: center;
            height: 51px;
        }
        .auto-style11 {
            height: 51px;
        }
        .auto-style12 {
            height: 43px;
        }
    </style>
</head>
<body style="height: 369px">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Welcome to login screen"></asp:Label>
        </div>
        <div class="auto-style3">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:CheckBox ID="CbRemember" runat="server" Text="Remember me" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style12">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Click here to register</asp:HyperLink>
        </div>
    </form>
</body>
</html>
