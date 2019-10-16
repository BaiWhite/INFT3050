﻿using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFT3050.UI.Admin
{
    /// <summary>
    /// manage user detail information
    /// </summary>
    public partial class UserManage : System.Web.UI.Page
    {
        UserClass newUser = new UserClass();
        private string userId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UserID"] == null)
            {
                Response.Redirect("ListAllUserManage.aspx");
            }
            userId = Request.QueryString["UserID"];
            UserManager userManager = new UserManager();
            UserClass user = new UserClass();
            user = userManager.FindUser(userId);
            UserName.Text = user.UserName;
            Email.Text = user.Email;
            Password.Text = user.Password;
            UserRole.Text = user.Role;
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

        protected void Name_TextChanged(object sender, EventArgs e)
        {
            newUser.UserName = UserName.Text;
        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {
            newUser.Email = Email.Text;
        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {
            newUser.Password = Password.Text;
        }

        protected void Role_TextChanged(object sender, EventArgs e)
        {
            newUser.Role = UserRole.Text;
        }

        protected void PostageButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("PostageManage.aspx?UserID=" + newUser.UserID);
        }
    }
}