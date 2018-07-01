<%@ Page Title="All Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PhotoAlbums_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id" AutoPostBack="true"></asp:DropDownList>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource2" ItemType="CosaNostraPRODModel.Picture">
                <ItemTemplate>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "PictureDetails.aspx?Id=" + Item.Id.ToString() %>'>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.ImageUrl %>' ToolTip='<%# Item.ToolTip %>' />
                        </asp:HyperLink>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%#Item.Description %>'></asp:Label>
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul class="ItemContainer">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:EntityDataSource ID="EntityDataSource2" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=CosaNostraPRODEntities" DefaultContainerName="CosaNostraPRODEntities" EnableFlattening="False" EntitySetName="Pictures" Where="">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="PhotoAlbumId" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:EntityDataSource>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CosaNostraPRODEntities" DefaultContainerName="CosaNostraPRODEntities" EnableFlattening="False" EntitySetName="PhotoAlbums" EntityTypeFilter="PhotoAlbum" Select="it.[Name], it.[Id]">
            </asp:EntityDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

