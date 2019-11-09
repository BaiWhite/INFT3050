using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INFT3050.App_Start
{
    public class SecureRedirection : System.Web.UI.Page
    {
        public void SSLRedirection()
        {
            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://"));
            }

            if (!Request.Url.ToString().StartsWith("http://") || !Request.Url.ToString().StartsWith("https://"))
                Response.Redirect("https://" + Request.Url.ToString());
        }
    }
}