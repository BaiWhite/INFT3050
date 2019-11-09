using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using INFT3050.BLL;

namespace INFT3050.UI.Admin
{
    /// <summary>
    /// master page for admin interface
    /// </summary>
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://").Replace("65326", "44366"));
            }
            if (Request.Url.ToString().Substring(0, 4) != "http")
                Response.Redirect("https://" + Request.Url.ToString());
            UserManager manager = new UserManager();
            if (!manager.IsAdmin(Session["userId"].ToString()))
            {
                Response.Redirect("~/");
            }
        }
    }
}