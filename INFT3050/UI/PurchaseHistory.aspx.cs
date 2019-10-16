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
    /// purchase history page, list all previous carts
    /// </summary>
    public partial class PurchaseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CartManager cartManager = new CartManager();
            List<Cart> carts = new List<Cart>();
            carts = cartManager.ShowCarts(Session["name"].ToString());
            string innerHtml = "<ul>";
            foreach (var item in carts)
            {
                innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/ShoppingCart.aspx?CartID=" + item.CartID + " \">" + item.CartID + "</a></li><br />";
            }
            innerHtml = innerHtml + "</ul>";
            CartList.InnerHtml = innerHtml;
        }
    }
}