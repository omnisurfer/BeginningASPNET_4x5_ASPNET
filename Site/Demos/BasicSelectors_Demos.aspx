<%@ Page Title="BasicSelectors_Demos" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BasicSelectors_Demos.aspx.cs" Inherits="Demos_BasicSelectors_Demos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Basic Selectors</h1>
    <div class="SampleClass">I am a div.</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">
    <script type="text/javascript">
        $(function()
        {
            $('*').css('color', 'green');
            $('#Sidebar').css('border-bottom', '2px solid red');
            $('h1').bind('click', function () { alert('Hello World') });
            $('.SampleClass').addClass('PleaseWait').hide(5000);
            $('footer, header').slideUp('slow').slideDown('slow');
            $('#Sidebar img').fadeTo(5000, 0.1);
        }
        )
    </script>
</asp:Content>




