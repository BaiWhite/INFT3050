using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using INFT3050.Model;

namespace INFT3050.DAL
{
    /// <summary>
    /// using cart related table, which include not only Cart table but also CartItem table
    /// </summary>
    public class CartDataAccess
    {
        /// <summary>
        /// connect to the data base
        /// </summary>
        /// <returns></returns>
        private SqlConnection OpenDataBase()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\bobai\\source\\repos\\INFT3050\\INFT3050\\App_Data\\Database.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        /// <summary>
        /// get list of cart based on keywards like cartId, status
        /// list items in cart if withItem = true, otherwise just return basic cart information
        /// </summary>
        /// <param name="cartId">cart ID</param>
        /// <param name="status">status</param>
        /// <param name="withItem">weather with item</param>
        /// <returns>list of cart satisfy conditions</returns>
        internal List<Cart> GetCart(int cartId, string status, bool withItem)
        {
            SqlConnection connection = OpenDataBase();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dataReader;

            if (cartId == 0)
            {
                cmd = new SqlCommand("select * from Cart where Status='" + status + "'", connection);
                dataReader = cmd.ExecuteReader();
            }
            else
            {
                cmd = new SqlCommand("select * from Cart where cartID='" + cartId + "'", connection);
                dataReader = cmd.ExecuteReader();
            }

            List<Cart> carts = new List<Cart>();
            Cart cart = new Cart();
            while (dataReader.Read())
            {
                cart = ReadCart(dataReader);
                if (withItem)
                {
                    cmd = new SqlCommand("select * from CartItem where cartID='" + cartId + "'", connection);
                    dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        cart.Items.Add(ReadCartItem(dataReader));
                    }
                }
                carts.Add(cart);
            }
            return carts;
        }

        /// <summary>
        /// get list of cart by user name
        /// should get list of cart by userId, but made some mistakes while write this part
        /// and no time to fix all these
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="status"></param>
        /// <param name="withItem"></param>
        /// <returns></returns>
        internal List<Cart> GetCartUId(string userName, string status, bool withItem)
        {
            SqlConnection connection = OpenDataBase();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dataReader;

            cmd = new SqlCommand("select * from Cart where UserName='" + userName + "'", connection);
            dataReader = cmd.ExecuteReader();

            List<Cart> carts = new List<Cart>();
            Cart cart = new Cart();

            cart = ReadCart(dataReader);
            while (dataReader.Read())
            {
                if (withItem)
                {
                    cmd = new SqlCommand("select * from CartItem where CartID='" + cart.CartID + "'", connection);
                    dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        cart.Items.Add(ReadCartItem(dataReader));
                    }
                }
                carts.Add(cart);
            }
            return carts;
        }

        /// <summary>
        /// update cart information
        /// also use for insert cart into cart table
        /// </summary>
        /// <param name="cart"></param>
        /// <returns></returns>
        internal int CartUpdate(Cart cart)
        {
            SqlConnection connection = OpenDataBase();
            SqlCommand cmd;
            Int32 newId = 0;

            if (cart.CartID == 0)
            {
                string cartStatus = "open";
                string insertQuery = "insert into Cart(UserName, Status) values('" + cart.UserName + "', '" + cartStatus + "')";
                cmd = new SqlCommand(insertQuery, connection);
                newId = (Int32)cmd.ExecuteScalar();

                insertQuery = "insert into CartItem values('" + cart.CartID + "','" + cart.Items.FirstOrDefault().ProductID + "','" + cart.Items.FirstOrDefault().Amount + "')";
                cmd = new SqlCommand(insertQuery, connection);
            }
            else
            {
                cmd = new SqlCommand("select * from Cart where cartID='" + cart.CartID + "'", connection);
                SqlDataReader dataReader = cmd.ExecuteReader();
                newId = 0;

                string cartStatus = cart.Status ?? "open";
                string insertQuery = "UPDATE Cart SET UserName='" + cart.UserName + "', Status='" + cartStatus + "' WHERE CartId=" + cart.CartID;
                cmd = new SqlCommand(insertQuery, connection);

                insertQuery = "insert into CartItem values('" + cart.CartID + "','" + cart.Items.FirstOrDefault().ProductID + "','" + cart.Items.FirstOrDefault().Amount + "')";
                cmd = new SqlCommand(insertQuery, connection);
            }

            cmd.ExecuteReader();
            connection.Close();
            return newId;
        }

        /// <summary>
        /// get items in cart from dataReader
        /// </summary>
        /// <param name="dataReader"></param>
        /// <returns></returns>
        private CartItem ReadCartItem(SqlDataReader dataReader)
        {
            CartItem cartItem = new CartItem();
            cartItem.ProductID = Convert.ToInt32($"{dataReader[1]}");
            cartItem.Amount = Convert.ToInt32($"{dataReader[2]}");
            return cartItem;
        }

        /// <summary>
        /// get cart information from reader
        /// </summary>
        /// <param name="reader"></param>
        /// <returns></returns>
        private Cart ReadCart(SqlDataReader reader)
        {
            Cart cart = new Cart();
            cart.CartID = Convert.ToInt32($"{reader[0]}");
            cart.UserName = $"{reader[1]}";
            cart.Status = $"{reader[2]}";
            return cart;
        }
    }
}