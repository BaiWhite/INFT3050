<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="INFT3050.UI.AddShoppingCart" %>
<asp:Content ID="Product" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id ="Name" runat="server"></h2>
    <table>
        <tr>
            <td>
                Price:
            </td>
            <td>
                <b id="Price" runat="server"></b>
            </td>
        </tr>
        <tr>
            <td>
                Description:
            </td>
            <td id="Description" runat="server">

            </td>
        </tr>
    </table>
    <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
    <asp:Button ID="AddCartButton" 
        runat="server" 
        Text="AddToCart" 
        OnClick="AddCartButton_Click" />
    <asp:RegularExpressionValidator ID="AmountRegularExpressionValidator" 
        ControlToValidate="Amount" 
        runat="server" 
        ErrorMessage="Number Only" 
        ValidationExpression="\d+">
    </asp:RegularExpressionValidator>
</asp:Content>
