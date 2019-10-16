
<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="INFT3050.UI.Admin.WebForm1" %>
<asp:Content ID="PostageManage" ContentPlaceHolderID="AdminContent" runat="server">
    <asp:Button ID="Add"
        runat="server"
        Text="Add"
        OnClick="AddButton_Click" />
    <div id="ProductList" runat="server"></div>
</asp:Content>