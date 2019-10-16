using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI
{
    /// <summary>
    /// show shopping cart created in this session
    /// </summary>
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CartManager cartManager = new CartManager();
            Cart cart = new Cart();
            cart = cartManager.ShowCart(Request.QueryString["CartID"]);
            string innerHtml = "<ul>";
            foreach (var item in cart.Items)
            {
                innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/Product.aspx?ProductID=" + item.ProductID + " \">" + item.ProductName + "</a></li><br />";
            }
            innerHtml = innerHtml + "</ul>";
            CartList.InnerHtml = innerHtml;
            if (cart.Status == "open")
            {
                innerHtml = "<asp:Button ID=\"MakePayment\" runat=\"server\" OnClick=\"MakePayment_Click\" Text=\"Make Payment\" />";
                ShowPayment.InnerHtml = innerHtml;
            }
        }

        protected void MakePayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentAndConfirm?CartID=" + Request.QueryString["CartID"]);
        }
    }
}