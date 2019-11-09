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
    /// list out all products in database
    /// </summary>
    public partial class ListAllItemManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://").Replace("65326", "44366"));
            }
            if (Request.Url.ToString().Substring(0, 4) != "http")
                Response.Redirect("https://" + Request.Url.ToString());

            List<SearchResult> resultList = new List<SearchResult>();
            ProductManager manager = new ProductManager();
            resultList = manager.Search("ALLPRODUCT");
            string innerHtml = "<ul>";
            foreach (var item in resultList)
            {
                innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/Admin/ItemManage.aspx?ProductID=" + item.ProductId + " \">" + item.Key + "</a></li><br />";
            }
            innerHtml = innerHtml + "</ul>";
            
            ProductList.InnerHtml = innerHtml;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemManage.aspx?ProductID=0");
        }
    }
}