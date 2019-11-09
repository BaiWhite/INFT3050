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
    /// registration new admin
    /// </summary>
    public partial class Registration : System.Web.UI.Page
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

        protected void RegisterFormSubmit_Click(object sender, EventArgs e)
        {
            if (Password.Text == RePassword.Text)
            {
                UserManager manager = new UserManager();
                string check = manager.Register(UserName.Text, Email.Text, Password.Text, "Admin");
                if (check != "Registered")
                {
                    Warning.InnerHtml = check;
                }
            }
            else
            {
                Warning.InnerHtml = "RePassward does not same as Password";
            }
        }
    }
}