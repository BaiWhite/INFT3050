using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI
{
    /// <summary>
    /// product detail page, will show product description
    /// </summary>
    public partial class AddShoppingCart : System.Web.UI.Page
    {
        string productId;
        protected void Page_Load(object sender, EventArgs e)
        {
            productId = Request.QueryString["ProductID"];
            ProductManager productManager = new ProductManager();
            Product product = new Product();
            product = productManager.Product(productId);
            Name.InnerHtml = product.Name;
            Price.InnerHtml = "$" + product.Price;
            Description.InnerHtml = product.Description;
        }

        protected void AddCartButton_Click(object sender, EventArgs e)
        {
            CartManager cartManager = new CartManager();
            if (Session["name"].ToString() == null || Session["name"].ToString() == "")
            {
                Response.Redirect("Lgoin.aspx");
            }
            string cartId = Session["CartId"].ToString();
            if (cartId != null && cartId != "")
            {
                cartManager.AddToCart(Amount.Text, productId, Session["name"].ToString(), cartId);
                Response.Redirect("ShoppingCart.aspx?CartId=" + cartId);
            }
            else
            {
                cartManager.AddToCart(Amount.Text, productId, Session["name"].ToString(), "");
                Response.Redirect("~/");
            }
        }
    }
}