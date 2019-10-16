using INFT3050.BLL;
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

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            UserManager manager = new UserManager();
            string result = manager.Login(UserName.Text, Password.Text);
            if (result != "Logined")
            {
                Warning.InnerHtml = result;
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