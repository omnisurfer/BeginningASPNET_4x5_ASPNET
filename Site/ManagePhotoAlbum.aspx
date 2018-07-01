<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="_ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id, ImageUrl" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" ItemType="CosaNostraPRODModel.Picture" OnItemInserting="ListView1_ItemInserting">
        <InsertItemTemplate>
            <li style="">Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# BindItem.Description %>' TextMode="MultiLine"/>
                <asp:RequiredFieldValidator ID="reqDesc" runat="server" ErrorMessage="Picture description required" ControlToValidate="DescriptionTextBox"></asp:RequiredFieldValidator>
                <br />
                ToolTip:
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# BindItem.ToolTip %>' />
                <asp:RequiredFieldValidator ID="reqToolTip" runat="server" ErrorMessage="Tool Tip required" ControlToValidate="ToolTipTextBox"></asp:RequiredFieldValidator>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:CustomValidator ID="cusValImage" runat="server" ErrorMessage="Select a valid .jpg"></asp:CustomValidator>
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false" />
            </li>
        </InsertItemTemplate>
        <ItemTemplate>
            <li style="">Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Item.Description %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Item.ToolTip %>' />
                <br />                
                <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Item.ImageUrl %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
        </LayoutTemplate>

    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CosaNostraPRODEntities" DefaultContainerName="CosaNostraPRODEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EntitySetName="Pictures" EntityTypeFilter="" Select="" Where="it.PhotoAlbum.Id = @photoAlbumId" OnInserting="EntityDataSource1_Inserting" OnDeleted="EntityDataSource1_Deleted">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>

