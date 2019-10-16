using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI
{
    /// <summary>
    /// the logout page. Currently only have a logout button
    /// </summary>
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("name");
            Session.Remove("userId");
            Response.Redirect("~/");
        }
    }
}