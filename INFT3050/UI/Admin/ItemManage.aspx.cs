using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI.Admin
{
    /// <summary>
    /// update item/product information
    /// </summary>
    public partial class ItemManage : System.Web.UI.Page
    {
        private string productId;
        Product newProduct = new Product();

        protected void Page_Load(object sender, EventArgs e)
        {
            productId = Request.QueryString["ProductID"];
            if (productId != "0")
            {
                ProductManager productManager = new ProductManager();
                Product product = new Product();
                product = productManager.Product(productId);
                Name.Text = product.Name;
                Price.Text = "$" + product.Price;
                Description.Text = product.Description;
                newProduct = product;
            }
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            ProductManager productManager = new ProductManager();
            productManager.Update(newProduct);
            Response.Redirect("ListAllItemManage.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllItemManage.aspx");
        }

        protected void Name_TextChanged(object sender, EventArgs e)
        {
            newProduct.Name = Name.Text;
        }

        protected void Price_TextChanged(object sender, EventArgs e)
        {
            newProduct.Price = Price.Text;
        }

        protected void Description_TextChanged(object sender, EventArgs e)
        {
            newProduct.Description = Description.Text;
        }

        protected void Status_TextChanged(object sender, EventArgs e)
        {
            newProduct.Status = Status.Text;
        }
    }
}