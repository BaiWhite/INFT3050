using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace INFT3050.DAL
{
    /// using product data base
    public class ProductDataAccess
    {
        // open a sql connection to product data base
        public SqlConnection OpenDataBase()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\bobai\\source\\repos\\INFT3050\\INFT3050\\App_Data\\Database.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        // search for a list of product by key ward "search"
        public List<Product> SearchProduct(string search)
        {
            SqlConnection connection = OpenDataBase();
            string selectQuery = "";
            if (search == "ALLPRODUCT")
            {
                // return all if key ward "search" is "ALLPRODUCT"
                selectQuery = "SELECT * FROM Product";
            }
            else
            {
                selectQuery = "SELECT * FROM Product WHERE Name LIKE '" + search + "'";
            }
            SqlCommand cmd = new SqlCommand(selectQuery, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            List<Product> products = new List<Product>();
            while (reader.Read())
            {
                products.Add(ReadSingleRow(reader));
            }
            connection.Close();
            return products;
        }

        // update product information, or insert a product information
        internal void UpdateProduct(Product newProduct)
        {
            SqlConnection connection = OpenDataBase();
            SqlCommand cmd;
            Int32 newId = 0;

            // if productId is 0, create a new one
            if (newProduct.ProductId == 0)
            {
                string insertQuery = "insert into Product(Name, Price, Description, Status) values('" + newProduct.Name + "', '" + newProduct.Price + "', '" + newProduct.Description + "', '" + newProduct.Status + "')";
                cmd = new SqlCommand(insertQuery, connection);
                newId = (Int32)cmd.ExecuteScalar();
            }
            // otherwise update product information
            else
            {
                cmd = new SqlCommand("select * from Product where ProductID='" + newProduct.ProductId + "'", connection);
                SqlDataReader dataReader = cmd.ExecuteReader();

                string cartStatus = newProduct.Status ?? "open";
                string insertQuery = "UPDATE Product SET Name='" + newProduct.Name + "', Price='" + newProduct.Price + "', Description='" + newProduct.Description + "', Status='" + newProduct.Status + "' WHERE ProductId=" + newProduct.ProductId;
                cmd = new SqlCommand(insertQuery, connection);
            }

            cmd.ExecuteReader();
            connection.Close();
        }

        // get the product information from data base by productId
        public Product GetProduct(string productId)
        {
            SqlConnection connection = OpenDataBase();

            SqlCommand cmd = new SqlCommand("select * from Product where ProductID='" + productId + "'", connection);
            SqlDataReader dataReader = cmd.ExecuteReader();

            Product product = new Product();
            product = ReadSingleRow(dataReader);
            return product;
        }

        // read product information from table and store into a product model
        private static Product ReadSingleRow(SqlDataReader record)
        {
            Product product = new Product();
            product.ProductId = Convert.ToInt32($"{record[0]}");
            product.Name = $"{record[1]}";
            product.Price = $"{record[2]}";
            product.Description = $"{record[3]}";
            product.Status = $"{record[4]}";
            return product;
        }
    }
}