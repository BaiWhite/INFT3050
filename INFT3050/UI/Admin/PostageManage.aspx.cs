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
    /// manage postages
    /// </summary>
    public partial class PostageManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Postage> resultList = new List<Postage>();
            UserManager manager = new UserManager();
            resultList = manager.ListPostages(Request.QueryString["userId"]);
            string innerHtml = "<ul>";
            foreach (var item in resultList)
            {
                innerHtml = innerHtml + 
                    "<li>" +
                    "<table> " +
                    "<tr><td>ContactName</td><td>" + item.ContactName + "</td></tr>" +
                    "<tr><td>Street</td><td>" + item.Street + "</td></tr>" +
                    "<tr><td>City</td><td>" + item.City + "</td></tr>" +
                    "<tr><td>State</td><td>" + item.State + "</td></tr>" +
                    "<tr><td>Country</td><td>" + item.Country + "</td></tr>" +
                    "<tr><td>ZipCode</td><td>" + item.ZipCode + "</td></tr>" +
                    "<tr><td>Phone</td><td>" + item.Phone + "</td></tr>" +
                    "</table>" + 
                    "<asp:Button id=\"Button_"+ item.PostageID + "\" runat=\"server\" Text=\"Edit\" OnClick=\"Edit_Click\"/>" + 
                    "</li><br />";
            }
            innerHtml = innerHtml + "</ul>";

            PostageList.InnerHtml = innerHtml;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemManage.aspx?ProductID=0");
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
        }
    }
}