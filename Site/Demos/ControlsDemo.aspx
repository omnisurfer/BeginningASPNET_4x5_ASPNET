<%@ Page Title="Controls Demo" Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Demos_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="YourName" runat="server">Your name</asp:TextBox>
        <br />
        <asp:Button ID="SubmitButton" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    </div>
        <asp:Label ID="Result" runat="server"></asp:Label>
    </form>
</body>
</html>
