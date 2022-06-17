<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workshop.aspx.cs" Inherits="Assessment2.Workshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #CCCCCC">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 39px;
            text-align: center;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            height: 142px;
        }
        .auto-style5 {
            width: 36%;
        }
        .auto-style6 {
            height: 77px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style3" Text="Welcome"></asp:Label>
        </div>
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Pleas indicate your preferred date for a programming workshop below:"></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <div class="auto-style4">
            <br />
            <table class="auto-style5">
                <tr>
                    <td style="border: thin solid #FF00FF">Name</td>
                    <td style="border: thin solid #FF00FF">Date</td>
                    <td style="border: thin solid #FF00FF">Java</td>
                    <td style="border: thin solid #FF00FF">C#</td>
                    <td style="border: thin solid #FF00FF">C++</td>
                </tr>
                <tr>
                    <td style="border: thin solid #FF00FF">
                        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                    </td>
                    <td style="border: thin solid #FF00FF">
                        <asp:Label ID="lbldate" runat="server"></asp:Label>
                    </td>
                    <td style="border: thin solid #FF00FF">
                        <asp:Label ID="lbljava" runat="server"></asp:Label>
                    </td>
                    <td style="border: thin solid #FF00FF">
                        <asp:Label ID="lblcsharp" runat="server"></asp:Label>
                    </td>
                    <td style="border: thin solid #FF00FF">
                        <asp:Label ID="lblcplus" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <div class="auto-style6">
            <asp:Label ID="Label2" runat="server" Text="To indicate a new preferred date, choose one on the calender below:"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style8" rowspan="3">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td>
                        <asp:RadioButton ID="rbJava" runat="server" GroupName="languages" Text="Java" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:RadioButton ID="rbCH" runat="server" GroupName="languages" Text="C#" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rbCplus" runat="server" GroupName="languages" Text="C++" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </p>
        <asp:Button ID="btnConfirmDate" runat="server" OnClick="btnConfirmDate_Click" Text="Confirm Date" />
    </form>
</body>
</html>
