<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="INFT3050.UI.Logout" %>
<asp:Content ID="Logout" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button 
        ID="LogoutButton" 
        runat="server" 
        Text="Log Out" 
        onclick="LogoutButton_Click"/>
</asp:Content>
