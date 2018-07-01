<%@ Page Title="CSS Demo" Language="C#" AutoEventWireup="true" CodeFile="CSSDemo.aspx.cs" Inherits="Demos_CSSDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1 {
            font-size: 20px;
            color: blue;
        }

        p {
            color: red;
            font-style: italic;
        }

        .RightAligned {
            text-align: right;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to the CSS Demo Page</h1>
        <p>A paragraph!</p>
        <p class="RightAligned">A right aligned paragraph!</p>
    </div>
    </form>
</body>
</html>
