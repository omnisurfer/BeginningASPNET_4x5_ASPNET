<%@ Page Title="WebServices_Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices_Demo.aspx.cs" Inherits="Demos_WebServices_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="YourName" type="text" />
    <input id="SayHello" type="button" value="Say Hello" onclick="helloWorld();" />
    <br />
    <input id="SayHelloMethod" type="button" value="Say Hello Method" onclick="helloWorldMethod();" />
    <br />
    <input id="Button1" type="button" value="Test123 Method" onclick="test123();" />

    <script type="text/javascript">
        function helloWorld() {
            var yourName = document.getElementById('YourName').value;
            NameService.HelloWorld(yourName, windowCallback);
        }

        function helloWorldMethod() {
            var yourName = document.getElementById('YourName').value;
            PageMethods.HelloWorld(yourName, windowCallback);
        }
       
        function test123() {
            var test = document.getElementById('YourName').value;
            PageMethods.Test123(test, windowCallback);
        }

        function windowCallback(result) {
            alert(result);
        }

    </script>
</asp:Content>

