<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:ContactForm runat="server" ID="ContactForm" />
</asp:Content>

