<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="INFT3050.UI.Search" %>
<asp:Content ID="Search" ContentPlaceHolderID="MainContent" runat="server">

<div class="row container search">
    <asp:TextBox ID="SearchBox" runat="server"></asp:TextBox>

    <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />

    <hr />

    <div id="ShowResultList" runat="server"></div>
</div>
</asp:Content>
