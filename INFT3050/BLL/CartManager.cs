using INFT3050.DAL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INFT3050.BLL
{
    /// <summary>
    /// Manage cart realted functions
    /// </summary>
    public class CartManager
    {
        /// <summary>
        /// Add item in cart
        /// </summary>
        /// <param name="amount">the amout of item</param>
        /// <param name="productId">item productId</param>
        /// <param name="userName">the one who ordered item</param>
        /// <param name="cartId">item cartId, null if no cart created in this session</param>
        public void AddToCart(string amount, string productId, string userName, string cartId)
        {
            Cart cart = new Cart();
            CartItem cartItem = new CartItem();
            cartItem.Amount = Convert.ToInt32(amount);
            cartItem.ProductID = Convert.ToInt32(productId);
            CartDataAccess dataAccess = new CartDataAccess();
            if (cartId == "")
            {
                cart.CartID = 0;
                cart.UserName = userName;
                cart.Items.Add(cartItem);
            }
            else
            {
                cart = dataAccess.GetCart(Convert.ToInt32(cartId), "", false);
                cart.Items.Add(cartItem);
            }
            dataAccess.CartUpdate(cart);
        }

        /// <summary>
        /// show all related carts
        /// </summary>
        /// <param name="userName">cart owner name</param>
        /// <returns>list of all carts made by user</returns>
        internal List<Cart> ShowCarts(string userName)
        {
            CartDataAccess dataAccess = new CartDataAccess();
            UserDataAccess user = new UserDataAccess();
            return dataAccess.GetCartUId(userName, "", false);
        }

        /// <summary>
        /// show detail information about the cart
        /// </summary>
        /// <param name="cartId">the cartId</param>
        /// <returns>the cart</returns>
        internal Cart ShowCart(string cartId)
        {
            Cart cart = new Cart();
            CartDataAccess dataAccess = new CartDataAccess();
            cart = dataAccess.GetCart(Convert.ToInt32(cartId), "", false);
            return cart;
        }
    }
}