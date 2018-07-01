<%@ Page Title="jQuery_Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jQuery_Demo.aspx.cs" Inherits="Demos_jQuery_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <input id="Button1" type="button" value="Button" />
    <h1>JQUERY TEST PAGE ONE TWO THREE!!!</h1>
    <script type="text/javascript">
        $(document).ready(            
            function () {
                var toggle = true;
                $('#MainContent').css('background-color', 'green')
                $('#Button1').click(
                    function () {
                        if (toggle) {
                            $('#MainContent').css('background-color', 'red').animate({ width: '75px' })
                            $('#MainContent h1').fadeOut(50);
                            //$('#Sidebar').animate({zindex: '1', xpos: '100px'})
                            //toggle = !toggle;
                        }
                        else {
                            $('#MainContent').css('background-color', 'red').animate({ width: '534px'})
                            $('#MainContent h1').fadeIn(2000);
                            
                        }

                        toggle = !toggle;
                    }
                    )
            }
            )        
    </script>
</asp:Content>

