<%@ Page Title="Add/Edit Reviews - Coded Example" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewCoded.aspx.cs" Inherits="Management_AddEditReviewCoded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" Width="450px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="A review title is required!" ControlToValidate="TitleText"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Summary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="SummaryText" runat="server" Width="450px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="A review summary is required!" ControlToValidate="SummaryText"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Body"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="BodyText" runat="server" Width="450px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="GenreList" runat="server" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CosaNostraPRODEntities" DefaultContainerName="CosaNostraPRODEntities" EnableFlattening="False" EntitySetName="Genres">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" Text="Authorized" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

