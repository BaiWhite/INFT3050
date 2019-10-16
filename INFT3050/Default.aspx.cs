using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050
{
    /// <summary>
    /// the default page
    /// show first 5 products
    /// </summary>
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SearchResult> resultList = new List<SearchResult>();
            ProductManager manager = new ProductManager();
            resultList = manager.Search("ALLPRODUCT");
            string innerHtml = "<ul>";
            if (resultList.Count != 0)
            {
                for (int i = 0; i < 5; i++)
                {
                    innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/Product.aspx?ProductID=" + resultList[i].ProductId + " \">" + resultList[i].Key + "</a></li><br />";
                }
            }
            innerHtml = innerHtml + "</ul>";

            ListProduct.InnerHtml = innerHtml;
        }
    }
}