<%@ Page Title="Calc Demo" Language="C#" AutoEventWireup="true" CodeFile="CalcDemo.aspx.cs" Inherits="Demos_CalcDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            height: 102px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 99px;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 113px;
        }
        .auto-style5 {
            width: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="ResultLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="ValueBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Operators" runat="server">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="ValueBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="CalculateButton" runat="server" OnClick="CalculateButton_Click" Text="Calculate" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
