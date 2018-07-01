<%@ Page Title="Table Demo" Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            list-style-type: square;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>CosaNostra Services Index:</h1>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Pizzas</td>
                <td>
                    <ul>
                        <li>Pepperoni</li>
                        <li>Supreme</li>
                        <li>Italiano</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Disposals</td>
                <td>
                    <ol>
                        <li>Value</li>
                        <li>Deluxe</li>
                        <li>Premium</li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Link</td>
                <td>

                    <ul>
                        <li><a href="../Default.aspx">Home</a></li>
                    </ul>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
