<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListAllUserManage.aspx.cs" Inherits="INFT3050.UI.Admin.ListAllUserManage" %>

<asp:Content ID="ListAllUserManage" ContentPlaceHolderID="AdminContent" runat="server">
    <asp:Button ID="Add"
        runat="server"
        Text="Add"
        OnClick="AddButton_Click" />
    <div id="UserList" runat="server"></div>
</asp:Content>
