using INFT3050.DAL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace INFT3050.BLL
{
    /// <summary>
    /// functions about user
    /// </summary>
    public class UserManager
    {
        /// <summary>
        /// login function
        /// </summary>
        /// <param name="userName">user name</param>
        /// <param name="password">password</param>
        /// <returns>userid if login success, otherwish waring info</returns>
        public UserClass Login(string userName, string password)
        {
            Login login = new Login();
            login.UserName = userName;
            login.Password = password;
            UserDataAccess access = new UserDataAccess();
            UserClass user = access.LoginDataBase(login);
            if (user.UserID == 0)
            {
                user.UserName = "Invalid username or password";
                return user;
            }
            else
            {
                return user;
            }
        }

        /// <summary>
        /// list postages of user
        /// </summary>
        /// <param name="userId">id of user</param>
        /// <returns>list of postages</returns>
        internal List<Postage> ListPostages(string userId)
        {
            PostageDataAccess dataAccess = new PostageDataAccess();
            return dataAccess.GetPostages(userId); ;
        }

        /// <summary>
        /// list out all user in table
        /// </summary>
        /// <param name="v">"ALLUSER"</param>
        /// <returns>return all user in database</returns>
        internal List<UserClass> FindAll(string v)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            return dataAccess.FindUser(v);
        }

        /// <summary>
        /// register a new user, currently only admin use
        /// </summary>
        /// <param name="userName">user name</param>
        /// <param name="email">email</param>
        /// <param name="password">password</param>
        /// <param name="role">role of user</param>
        /// <returns>registration success or need another username</returns>
        public string Register(string userName, string email, string password, string role)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            UserClass newUser = new UserClass();
            newUser.UserName = userName;
            newUser.Email = email;
            newUser.Password = password;
            newUser.Role = role;
            return dataAccess.RegisterDataBase(newUser);
        }

        /// <summary>
        /// register new user, normal visitor use
        /// </summary>
        /// <param name="userName">user name</param>
        /// <param name="email">email</param>
        /// <param name="password">password</param>
        /// <returns>registration success or need another username</returns>
        public string Register(string userName, string email, string password)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            UserClass newUser = new UserClass();
            newUser.UserName = userName;
            newUser.Email = email;
            newUser.Password = password;
            return dataAccess.RegisterDataBase(newUser);
        }

        /// <summary>
        /// find user by userId
        /// </summary>
        /// <param name="userId">user id</param>
        /// <returns>user information</returns>
        internal UserClass FindUser(string userId)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            return dataAccess.FindUser(userId).FirstOrDefault();
        }

        /// <summary>
        /// update user information
        /// </summary>
        /// <param name="newUser">new user information</param>
        internal string Update(UserClass newUser)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            dataAccess.Update(newUser);
            return "";
        }

        internal bool IsAdmin(string userId)
        {
            UserDataAccess dataAccess = new UserDataAccess();
            if (dataAccess.FindUser(userId).FirstOrDefault().Role.Contains("Admin"))
            {
                return true;
            }
            return false;

        }
    }
}