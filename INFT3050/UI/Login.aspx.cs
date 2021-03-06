﻿using INFT3050.App_Start;
using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;

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
            else if (Request.QueryString["Null"] == "reset")
            {
                Warning.InnerText = "Password reset";
            }

            if (Request.IsSecureConnection == false)
            {
                Response.Redirect(Request.Url.ToString().Replace("http://", "https://").Replace("65326", "44366"));
            }
            if (Request.Url.ToString().Substring(0, 4) != "http")
                Response.Redirect("https://" + Request.Url.ToString());
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
                UserClass result = manager.Login(UserName.Text, Password.Text);
                if (result.UserName == "Invalid username or password")
                {
                    Warning.InnerHtml = result.UserName;
                }
                else
                {
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                        1,
                        result.UserName,
                        DateTime.Now,
                        DateTime.Now.AddMinutes(30),
                        false,
                        result.ToString());
                    string hashTicket = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashTicket);
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                    HttpContext.Current.User = result;
                    string requestUrl = FormsAuthentication.GetRedirectUrl(FormsAuthentication.FormsCookieName, false);
                    Session["name"] = UserName.Text;
                    Session["userId"] = result.UserID;
                    Response.Redirect(requestUrl);
                }
            }
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void ForgetPassword_Click(object sender, EventArgs e)
        {
            LoginForm.Attributes.Add("style", "display: none");
            ForgetForm.Attributes.Remove("style");
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            if (PasswordForget.Text == RePasswordForget.Text)
            {
                UserManager manager = new UserManager();
                UserClass user = new UserClass();
                user.Email = EmailForget.Text;
                user.Password = PasswordForget.Text;
                manager.Update(user);
            }
            Response.Redirect("Login.aspx?Null=reset");
        }
    }
}