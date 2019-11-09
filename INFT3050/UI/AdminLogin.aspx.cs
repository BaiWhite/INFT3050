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
    /// login page specificly used by admin need type in url in address url
    /// </summary>
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://").Replace("65326", "44366"));
            }
            if (Request.Url.ToString().Substring(0, 4) != "http")
                Response.Redirect("https://" + Request.Url.ToString());
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            UserManager manager = new UserManager();
            UserClass result = manager.Login(UserName.Text, Password.Text);
            if (result.UserName != "Invalid username or password")
            {
                Warning.InnerHtml = result.UserName;
            }
            else
            {
                Session["name"] = UserName.Text;
                Session["userId"] = result;
                Response.Redirect("~/");
            }
        }
    }
}