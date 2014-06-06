﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contents.aspx.cs" Inherits="CMS.Admin.Contents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #main-content {
            width: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    Управление контентом
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/App_Themes/CMS/images/add.png" NavigateUrl="~/Admin/CreateContent.aspx" />
    <asp:Label ID="UpdateStateLabel" runat="server" />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="EntityDataSourceContents">
        <HeaderTemplate>
            <table class="content">
                <tr>
                    <th>ID</th>
                    <th>Заголовок</th>
                    <th>Опубликовано</th>
                    <th>Доступ</th>
                    <th>Показать заголовок</th>
                    <th>Позиция</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("ContentId")%>' />
                </td>
                <td style="text-align: left;">
                    <asp:Label runat="server" ID="Label2" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label runat="server" ID="Label3" Text='<%# Convert.ToBoolean(Eval("Publish")) ? "Да" : "Нет" %>' />
                </td>
                <td>
                    <asp:Label runat="server" ID="Label4" Text='<%# Eval("AccessLevel") %>' />
                </td>
                <td>
                    <asp:Label runat="server" ID="Label5" Text='<%# Convert.ToBoolean(Eval("ShowTitle")) ? "Да" : "Нет" %>' />
                </td>
                <td>
                    <asp:Label runat="server" ID="Label6" Text='<%# Eval("Position") %>' />
                </td>
                <td class="EditDeletStyle">
                    <asp:HyperLink ID="HyperLinkEdit" runat="server" ImageUrl="~/App_Themes/CMS/images/edit.png" NavigateUrl='<%# Eval("ContentId", "~/Admin/EditContent.aspx?id={0}")%>' />
                </td>
                <td class="EditDeletStyle">
                    <asp:HyperLink ID="HyperLinkDelete" runat="server" ImageUrl="~/App_Themes/CMS/images/delete.png" NavigateUrl='<%# Eval("ContentId", "~/Admin/DeleteContent.aspx?delete={0}")%>' />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <asp:EntityDataSource ID="EntityDataSourceContents" runat="server" ConnectionString="name=CMSEntities" DefaultContainerName="CMSEntities" EnableFlattening="False" EntitySetName="Contents">
    </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
