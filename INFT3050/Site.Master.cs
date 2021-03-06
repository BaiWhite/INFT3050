﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Change.HRef = "~/UI/PurchaseHistory";
                Change.InnerText = "Hi, " + Session["name"];
                Logout.InnerHtml = "<a  href=\"UI/Logout\">Logout</a>";
            }
        }
    }
}