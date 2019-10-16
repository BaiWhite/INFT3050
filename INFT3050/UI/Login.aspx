<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="INFT3050.UI.Login" %>
<asp:Content ID="Login" ContentPlaceHolderID="MainContent" runat="server">
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
                <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
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
            <td>
                <asp:LinkButton 
                    ID="Register" 
                    runat="server" 
                    OnClick="RegisterButton_Click">
                    New User
                </asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
