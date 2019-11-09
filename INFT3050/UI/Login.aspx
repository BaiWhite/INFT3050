<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="INFT3050.UI.Login" %>
<asp:Content ID="Login" ContentPlaceHolderID="MainContent" runat="server">
    <p id="Warning" runat="server"></p>
    <asp:Label 
        ID="certDataLabel"
        runat="server">
    </asp:Label>
    <table 
        id="LoginForm"
        runat="server">
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
            <td>
                <asp:LinkButton 
                    Text="Forget Password" 
                    ID="ForgetPassword" 
                    OnClick="ForgetPassword_Click" 
                    runat="server" />
            </td>
        </tr>
    </table>
    <table 
        id="ForgetForm" 
        style="display: none"
        runat="server">
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailForget" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordForget" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>RePassword</td>
            <td>
                <asp:TextBox ID="RePasswordForget" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button 
                    ID="ResetButton" 
                    runat="server" 
                    Text="Reset" 
                    OnClick="ResetButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
