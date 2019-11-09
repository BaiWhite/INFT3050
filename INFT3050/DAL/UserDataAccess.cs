using INFT3050.BLL;
using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace INFT3050.DAL
{
    /// <summary>
    /// Functions about UserTable
    /// </summary>
    public class UserDataAccess
    {
        /// <summary>
        /// Connect to UserTable
        /// </summary>
        /// <returns>SqlConnection</returns>
        public SqlConnection OpenDataBase()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\bobai\\source\\repos\\INFT3050\\INFT3050\\App_Data\\Database.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        /// <summary>
        /// Check Login information with information in UserTable
        /// </summary>
        /// <param name="login"></param>
        /// <returns>userID if valid, otherwise "Invalid username or password"</returns>
        public UserClass LoginDataBase(Login login)
        {
            string selectQuery = "select * FROM UserTable WHERE username='" + login.UserName + "' and password='" + login.Password + "'";
            using (SqlConnection connection = OpenDataBase())
            {
                SqlCommand cmd = new SqlCommand(selectQuery, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                UserClass user = new UserClass();
                if (reader.Read())
                {
                    user = ReadSingleRow(reader);
                }
                connection.Close();
                return user;
            }
        }

        /// <summary>
        /// Find user with userId
        /// </summary>
        /// <param name="userId"></param>
        /// <returns>Return all user with List<UserClass> if userId="ALLUSER", otherwise only user with imput userid</returns>
        internal List<UserClass> FindUser(string userId)
        {
            SqlConnection connection = OpenDataBase();
            string selectQuery = "";
            if (userId == "AllUSER")
            {
                selectQuery = "SELECT * FROM UserTable";
            }
            else
            {
                selectQuery = "SELECT * FROM UserTable WHERE UserID='" + userId + "'";
            }
            SqlCommand cmd = new SqlCommand(selectQuery, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            List<UserClass> users = new List<UserClass>();
            while (reader.Read())
            {
                users.Add(ReadSingleRow(reader));
            }
            connection.Close();
            return users;
        }

        /// <summary>
        /// Store user information from reader
        /// </summary>
        /// <param name="reader"></param>
        /// <returns>UserClass</returns>
        private UserClass ReadSingleRow(SqlDataReader reader)
        {
            UserClass user = new UserClass();
            user.UserID = Convert.ToInt32($"{reader[0]}");
            user.UserName = $"{reader[1]}";
            user.Email = $"{reader[2]}";
            user.Password = $"{reader[3]}";
            user.Role = $"{reader[4]}";
            return user;
        }

        /// <summary>
        /// Register user
        /// </summary>
        /// <param name="registration"></param>
        /// <returns>if user name been used, return "User Name is Already Exist", otherwise "Registered"</returns>
        public string RegisterDataBase(UserClass registration)
        {
            SqlConnection connection = OpenDataBase();

            SqlCommand cmd = new SqlCommand("select * from UserTable where username='" + registration.UserName + "'", connection);
            SqlDataReader dataReader = cmd.ExecuteReader();

            if (dataReader.Read())
            {
                connection.Close();
                return "User Name is Already Exist";
            }
            else if (registration.Role == "Admin")
            {
                dataReader.Close();
                string insertQuery = "insert into UserTable values('" + registration.UserName + "','" + registration.Email + "','" + registration.Password + "','" + registration.Role + "')";
                cmd = new SqlCommand(insertQuery, connection);
                cmd.ExecuteReader();
                connection.Close();
                return "Registered";
            }
            else
            {
                dataReader.Close();
                string cartStatus = registration.Role ?? "user";
                string insertQuery = "insert into UserTable values('" + registration.UserName + "','" + registration.Email + "','" + registration.Password + "','User')";
                cmd = new SqlCommand(insertQuery, connection);
                cmd.ExecuteReader();
                connection.Close();
                return "Registered";
            }
        }

        /// <summary>
        /// update user information, also use for insert a new user
        /// </summary>
        /// <param name="newUser"></param>
        internal void Update(UserClass newUser)
        {
            SqlCommand cmd;
            UserClass user = new UserClass();
            using (SqlConnection connection = OpenDataBase())
            {
                cmd = new SqlCommand("select * from UserTable where Email='" + newUser.Email + "'", connection);
                SqlDataReader dataReader = cmd.ExecuteReader();
                try
                {
                    dataReader.Read();
                    user = ReadSingleRow(dataReader);
                }
                catch (Exception ex)
                {
                    ErrorManage error = new ErrorManage();
                    // error.ShowError(ex);
                    throw;
                }
            }            
            user.Password = newUser.Password;
            string insertQuery = "";
            if (user.UserID == 0)
            {
                insertQuery = "insert into UserTable(UserName, Email, Password, Role) values('" + newUser.UserName + "', '" + newUser.Email + "', '" + newUser.Password + "', '" + newUser.Role + "')";
            }
            else
            {
                string cartStatus = newUser.Role ?? "user";
                insertQuery = "UPDATE UserTable SET UserName='" + user.UserName + "', Email='" + user.Email + "', Password='" + user.Password + "', Role='" + user.Role + "' WHERE UserID=" + user.UserID;
                
            }
            using (SqlConnection connection = OpenDataBase())
            {
                cmd = new SqlCommand(insertQuery, connection);
                cmd.ExecuteReader();
            }
        }
    }
}