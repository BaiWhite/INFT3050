using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI
{
    /// <summary>
    /// search product with key wards
    /// </summary>
    public partial class Search : System.Web.UI.Page
    {
        private List<SearchResult> resultList;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            ProductManager manager = new ProductManager();
            resultList = manager.Search(SearchBox.Text);
            string innerHtml = "<ul>";
            foreach (var item in resultList)
            {
                innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/Product.aspx?ProductID="+ item.ProductId +" \">" + item.Key + "</a></li><br />";
            }
            innerHtml = innerHtml + "</ul>";
            ShowResultList.InnerHtml = innerHtml;
        }
    }
}