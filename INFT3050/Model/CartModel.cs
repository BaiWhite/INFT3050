using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace INFT3050.Model
{
    public class Cart
    {
        [Display(Name = "CartID")]
        /// <summary>
        /// ID
        /// </summary>
        public int CartID { get; set; }

        [Display(Name = "UserName")]
        /// <summary>
        /// UserName
        /// </summary>
        public string UserName { get; set; }

        [Display(Name = "Status")]
        /// <summary>
        /// Status
        /// </summary>
        public string Status { get; set; }

        [Display(Name = "CartItems")]
        /// <summary>
        /// CartItems
        /// </summary>
        public List<CartItem> Items { get; set; }
    }

    public class CartItem
    {
        [Display(Name = "Amount")]
        /// <summary>
        /// Amount
        /// </summary>
        public int Amount { get; set; }

        [Display(Name = "ProductID")]
        /// <summary>
        /// ProductID
        /// </summary>
        public int ProductID { get; set; }

        [Display(Name = "ProductName")]
        /// <summary>
        /// ProductName
        /// </summary>
        public string ProductName { get; set; }
    }
}