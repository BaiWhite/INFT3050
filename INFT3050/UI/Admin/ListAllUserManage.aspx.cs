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
    /// list out all users in database
    /// </summary>
    public partial class ListAllUserManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<UserClass> resultList = new List<UserClass>();
            UserManager manager = new UserManager();
            resultList = manager.FindAll("AllUSER");
            string innerHtml = "<ul>";
            foreach (var item in resultList)
            {
                innerHtml = innerHtml + "<li><a runat=\"server\" href=\"~/UI/Admin/UserManage.aspx?UserID=" + item.UserID + " \">" + item.UserName + "</a></li><br />";
            }
            innerHtml = innerHtml + "</ul>";
            UserList.InnerHtml = innerHtml;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemManage.aspx?ProductID=0");
        }
    }
}