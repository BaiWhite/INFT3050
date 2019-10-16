using INFT3050.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI
{
    /// <summary>
    /// the login page
    /// </summary>
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Null"] == "null")
            {
                Warning.InnerText = "Missing UserName or Password";
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (UserName.Text == "" || Password.Text == "")
            {
                Response.Redirect("Login.aspx?Null=null");
            }
            else
            {
                UserManager manager = new UserManager();
                string result = manager.Login(UserName.Text, Password.Text);
                if (result == "Invalid username or password")
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

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}