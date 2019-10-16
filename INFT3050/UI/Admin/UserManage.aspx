<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="INFT3050.UI.Admin.UserManage" %>
<asp:Content ID="UserManage" ContentPlaceHolderID="AdminContent" runat="server">
    UserID: <div id="UserID" runat="server"></div>
    <table>
        <tr>
            <td>UserName:
            </td>
            <td>
                <asp:TextBox ID="UserName" runat="server" OnTextChanged="UserName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:
            </td>
            <td>
                <asp:TextBox ID="Email" runat="server" OnTextChanged="Email_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password:
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" OnTextChanged="Password_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Role:
            </td>
            <td>
                <asp:TextBox ID="UserRole" runat="server" OnTextChanged="Role_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="Edit"
        runat="server"
        Text="Edit"
        OnClick="EditButton_Click" />
    <asp:Button ID="Cancel"
        runat="server"
        Text="Cancel"
        OnClick="CancelButton_Click" />
    <asp:Button ID="Postage"
        runat="server"
        Text="PostageAdmin"
        OnClick="PostageButton_Click" />
</asp:Content>
