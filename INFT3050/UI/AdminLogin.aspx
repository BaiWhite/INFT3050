<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="INFT3050.UI.Admin.Login" %>

<asp:Content ID="AdminLogin" ContentPlaceHolderID="MainContent" runat="server">
    <p id="Warning" runat="server"></p>
    <table>
        <tr>
            <td>UserName</td>
            <td>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button
                    ID="LoginButton"
                    runat="server"
                    Text="Login"
                    OnClick="LoginButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
