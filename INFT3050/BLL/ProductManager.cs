using INFT3050.DAL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace INFT3050.BLL
{
    /// <summary>
    /// Functions about product
    /// </summary>
    public class ProductManager
    {
        ProductDataAccess dataAccess;

        /// <summary>
        /// get product information by productId
        /// </summary>
        /// <param name="productId">productId</param>
        /// <returns>the product</returns>
        public Product Product(string productId)
        {
            dataAccess = new ProductDataAccess();
            return dataAccess.GetProduct(productId);
        }

        /// <summary>
        /// search product with keywards
        /// </summary>
        /// <param name="searchWord">wards to search product</param>
        /// <returns>list of product related with the keyward/returns>
        public List<SearchResult> Search(string searchWord)
        {
            dataAccess = new ProductDataAccess();
            List<SearchResult> products = new List<SearchResult>();
            foreach (var item in dataAccess.SearchProduct(searchWord))
            {
                SearchResult result = new SearchResult();
                result.ProductId = item.ProductId;
                result.Key = item.Name;
                products.Add(result);
            }
            return products;
        }

        /// <summary>
        /// update product information
        /// </summary>
        /// <param name="newProduct">new product information</param>
        internal void Update(Product newProduct)
        {
            dataAccess = new ProductDataAccess();
            dataAccess.UpdateProduct(newProduct);
        }
    }
}