using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ShoppingCart.Models
{
    public class ProductWithCategoryVM
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int ReorderLevel { get; set; }
        public string CategoryName { get; set; }
        public Product Product { get; set; }
    }
}