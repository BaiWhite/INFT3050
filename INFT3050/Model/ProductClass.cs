using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace INFT3050.Model
{
    public class Product
    {
        [Display(Name = "ProductID")]
        /// <summary>
        /// ID
        /// </summary>
        public int ProductId { get; set; }

        [Display(Name = "Name")]
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; set; }

        [Display(Name = "Price")]
        /// <summary>
        /// Price
        /// </summary>
        public string Price { get; set; }

        [Display(Name = "Description")]
        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; set; }

        [Display(Name = "Status")]
        /// <summary>
        /// Status
        /// </summary>
        public string Status { get; set; }
    }

    public class SearchResult
    {
        [Display(Name = "KeyWardID")]
        /// <summary>
        /// ID
        /// </summary>
        public int ProductId { get; set; }

        [Display(Name = "KeyWard")]
        /// <summary>
        /// KeyWard
        /// </summary>
        public string Key { get; set; }
    }
}