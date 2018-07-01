<%@ Page Title="Create New Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbums.aspx.cs" Inherits="_NewPhotoAlbums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="EntityDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="false" />
            
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="An album name is required."></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox1" runat="server" ErrorMessage="An album name is required."></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CosaNostraPRODEntities" DefaultContainerName="CosaNostraPRODEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="PhotoAlbums" OnInserted="EntityDataSource1_Inserted">
    </asp:EntityDataSource>
</asp:Content>

