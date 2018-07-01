<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <a href="http://www.beach.com" target="_blank" id="VerticalLink" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/beach_banner1.jpg" AlternateText="Beach man!"/>
    </a>
</asp:Panel>

<asp:Panel ID="HorizontalPanel" runat="server">
    <a href="http://www.snow.com" target="_blank" id="HorizontalLink" runat="server">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/snow_banner0.jpg" AlternateText="Snow man!"/>
    </a>
</asp:Panel>

