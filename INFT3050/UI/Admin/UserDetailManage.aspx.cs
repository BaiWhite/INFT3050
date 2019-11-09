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
    public partial class UserDetailManage : System.Web.UI.Page
    {
        UserClass newUser = new UserClass();
        private string userId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://").Replace("65326", "44366"));
            }
            if (Request.Url.ToString().Substring(0, 4) != "http")
                Response.Redirect("https://" + Request.Url.ToString());

            if (Request.QueryString["UserID"] == null)
            {
                Response.Redirect("ListAllUserManage.aspx");
            }
            userId = Request.QueryString["UserID"];
            DetailManageUserID.InnerText = Request.QueryString["UserID"];
            UserManager userManager = new UserManager();
            UserClass user = new UserClass();
            user = userManager.FindUser(userId);
            DetailManageUserName.Text = user.UserName;
            DetailManageEmail.Text = user.Email;
            DetailManagePassword.Text = user.Password;
            DetailManageUserRole.Text = user.Role;
            newUser = user;
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            UserManager userManager = new UserManager();
            userManager.Update(newUser);
            Response.Redirect("ListAllUserManage.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAllUserManage.aspx");
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {
            newUser.UserName = DetailManageUserName.Text;
        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {
            newUser.Email = DetailManageEmail.Text;
        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {
            newUser.Password = DetailManagePassword.Text;
        }

        protected void Role_TextChanged(object sender, EventArgs e)
        {
            newUser.Role = DetailManageUserRole.Text;
        }

        protected void PostageButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("PostageManage.aspx?UserID=" + newUser.UserID);
        }
    }
}