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
    /// registration page for normall visitor
    /// </summary>
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterFormSubmit_Click(object sender, EventArgs e)
        {
            if (Password.Text == RePassword.Text)
            {
                UserManager manager = new UserManager();
                string check = manager.Register(UserName.Text, Email.Text, Password.Text);
                if (check != "Registered")
                {
                    Warning.InnerHtml = check;
                }
            }
            else
            {
                Warning.InnerHtml = "RePassward does not same as Password";
            }
            Response.Redirect("~/UI/Login");
        }
    }
}