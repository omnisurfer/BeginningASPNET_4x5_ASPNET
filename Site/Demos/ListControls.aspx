<%@ Page Title="ListControls Demo" Language="C#" AutoEventWireup="true" CodeFile="ListControls.aspx.cs" Inherits="Demos_ListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="L1">C#</asp:ListItem>
            <asp:ListItem Value="L2">Visual Basic</asp:ListItem>
            <asp:ListItem Value="L3">C/C++</asp:ListItem>
        </asp:DropDownList>       
        
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="L1">C#</asp:ListItem>
            <asp:ListItem Value="L2">Visual Basic</asp:ListItem>
            <asp:ListItem Value="L3">C/C++</asp:ListItem>
        </asp:CheckBoxList>

        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />

        <br />
        <br />

        <asp:Label ID="ResultLabel" runat="server" />
        
    </div>        
    </form>
</body>
</html>
