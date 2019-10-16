using INFT3050.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace INFT3050.DAL
{
    /// <summary>
    /// functions to deal with postage table
    /// </summary>
    public class PostageDataAccess
    {
        /// <summary>
        /// connect to the data base
        /// </summary>
        /// <returns>SqlConnection</returns>
        private SqlConnection OpenDataBase()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\bobai\\source\\repos\\INFT3050\\INFT3050\\App_Data\\Database.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<Postage> GetPostages(string userId)
        {
            SqlConnection connection = OpenDataBase();
            string selectQuery = "";
            if (userId == "ALLPOSTAGE")
            {
                selectQuery = "SELECT * FROM Postage";
            }
            else
            {
                selectQuery = "SELECT * FROM Postage WHERE UserID='" + userId + "'";
            }
            SqlCommand cmd = new SqlCommand(selectQuery, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            List<Postage> postages = new List<Postage>();
            while (reader.Read())
            {
                postages.Add(ReadSingleRow(reader));
            }
            connection.Close();
            return postages;
        }

        /// <summary>
        /// Store postage information from reader
        /// </summary>
        /// <param name="reader"></param>
        /// <returns>Postage model</returns>
        private Postage ReadSingleRow(SqlDataReader reader)
        {
            Postage postage = new Postage();
            postage.PostageID = Convert.ToInt32($"{reader[0]}");
            postage.UserID = Convert.ToInt32($"{reader[1]}");
            postage.ContactName = $"{reader[2]}";
            postage.State = $"{reader[3]}";
            postage.City = $"{reader[4]}";
            postage.State = $"{reader[5]}";
            postage.Country = $"{reader[6]}";
            postage.ZipCode = $"{reader[7]}"; 
            postage.Phone = $"{reader[8]}";
            return postage;
        }
    }
}