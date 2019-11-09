<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserDetailManage.aspx.cs" Inherits="INFT3050.UI.Admin.UserDetailManage" %>

<asp:Content ID="UserDetailManage" ContentPlaceHolderID="AdminContent" runat="server">
    UserID: <div id="DetailManageUserID" runat="server"></div>
    <table>
        <tr>
            <td>UserName:
            </td>
            <td>
                <asp:TextBox ID="DetailManageUserName" runat="server" OnTextChanged="UserName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:
            </td>
            <td>
                <asp:TextBox ID="DetailManageEmail" runat="server" OnTextChanged="Email_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password:
            </td>
            <td>
                <asp:TextBox ID="DetailManagePassword" runat="server" OnTextChanged="Password_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Role:
            </td>
            <td>
                <asp:TextBox ID="DetailManageUserRole" runat="server" OnTextChanged="Role_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="DetailManageEdit"
        runat="server"
        Text="Edit"
        OnClick="EditButton_Click" />
    <asp:Button ID="DetailManageCancel"
        runat="server"
        Text="Cancel"
        OnClick="CancelButton_Click" />
    <asp:Button ID="DetailManagePostage"
        runat="server"
        Text="PostageAdmin"
        OnClick="PostageButton_Click" />
</asp:Content>
