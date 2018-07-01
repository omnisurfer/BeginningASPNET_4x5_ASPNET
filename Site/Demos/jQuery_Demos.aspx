<%@ Page Title="jQuery_Demos" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jQuery_Demos.aspx.cs" Inherits="Demos_jQuery_Demos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-weight: normal;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1 title="First Header">First Header</h1>
    <table id="DemoTable" class="auto-style1">
        <tr>
            <td>R1C1</td>
            <td>R1C2</td>
        </tr>
        <tr>
            <td>R2C1</td>
            <td>R2C2</td>
        </tr>
        <tr>
            <td>R3C1</td>
            <td>R3C2</td>
        </tr>
        <tr>
            <td>R4C1</td>
            <td>R4C2</td>
        </tr>
        <tr>
            <td>R5C1</td>
            <td>R5C2</td>
        </tr>
    </table>
    <h2>Second <span class="auto-style2"><strong><em>Header</em></strong></span></h2>
    <input id="Button1" type="button" value="button" />
    <input id="Text1" type="text" />
    <input id="Checkbox1" type="checkbox" />
    <input id="Checkbox2" type="checkbox" />

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#DemoTable').css('background-color', 'green');
        }
        );
    </script>
</asp:Content>


