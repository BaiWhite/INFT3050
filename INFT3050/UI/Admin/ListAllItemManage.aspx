<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListAllItemManage.aspx.cs" Inherits="INFT3050.UI.Admin.ListAllItemManage" %>

<asp:Content ID="ListAllItemManage" ContentPlaceHolderID="AdminContent" runat="server">
    <asp:Button ID="Add"
        runat="server"
        Text="Add"
        OnClick="AddButton_Click" />
    <div id="ProductList" runat="server"></div>
</asp:Content>
