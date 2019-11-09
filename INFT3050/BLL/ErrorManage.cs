using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INFT3050.BLL
{
    /// <summary>
    /// Handle all errors
    /// </summary>
    public class ErrorManage : System.Web.UI.Page
    {
        public void ShowError(Exception exception)
        {
            Server.Transfer("UI/Error.aspx");
        }
    }
}