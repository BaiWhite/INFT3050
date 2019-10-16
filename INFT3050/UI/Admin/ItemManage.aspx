<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ItemManage.aspx.cs" Inherits="INFT3050.UI.Admin.ItemManage" %>

<asp:Content ID="ItemManage" ContentPlaceHolderID="AdminContent" runat="server">
    Item Name: <asp:TextBox ID="Name" runat="server" OnTextChanged="Name_TextChanged"></asp:TextBox>
    <table>
        <tr>
            <td>Price:
            </td>
            <td>
                <asp:TextBox ID="Price" runat="server" OnTextChanged="Price_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Status:
            </td>
            <td>
                <asp:TextBox ID="Status" runat="server" OnTextChanged="Status_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description:
            </td>
            <td>
                <asp:TextBox ID="Description" runat="server" OnTextChanged="Description_TextChanged"></asp:TextBox>
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
</asp:Content>
