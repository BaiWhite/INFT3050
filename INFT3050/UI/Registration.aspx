<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="INFT3050.UI.Registration" %>
<asp:Content ID="Registration" ContentPlaceHolderID="MainContent" runat="server">
    <div id="RegistrationForm">
        <table>
        <tr>
            <td>UserName</td>
            <td>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>RePassword</td>
            <td>
                <asp:TextBox ID="RePassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button 
                    ID="RegisterFormSubmit" 
                    runat="server" 
                    OnClick="RegisterFormSubmit_Click" 
                    Text="Register" />
            </td>
            <td>
            </td>
        </tr>
    </table>
        <p />
        <asp:RequiredFieldValidator 
            ID="UserNameRequiredFieldValidator" 
            ControlToValidate="UserName"
            ErrorMessage="Please enter a UserName.<br />" 
            Display="Dynamic"
            runat="server" />
        <asp:RequiredFieldValidator 
            ID="EmailRequiredFieldValidator" 
            ControlToValidate="Email"
            ErrorMessage="Please enter a Email.<br />" 
            Display="Dynamic"
            runat="server" />
        <asp:RegularExpressionValidator   
            ID="PasswordRegularExpressionValidator" 
            ControlToValidate="Password"
            ValidationExpression = "^[\s\S]{6,}$"
            ErrorMessage="Minimum 6 characters required."
            Display="Dynamic"
            runat="server" />
        <p id="Warning" runat="server"></p>
    </div>
</asp:Content>
