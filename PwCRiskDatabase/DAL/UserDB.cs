using MySql.Data.MySqlClient;
using PwCRiskDatabase.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PwCRiskDatabase.SQLServerDAL
{
    public class UserDB 
    {
        private const string PARAM_USERID = "@UserId";
        private const string PARAM_USERNAME = "@UserName";

        private const string SELECT_ALL_USER = "select * from User";
        private const string SELECT_USER_BY_USERID = "select * from User Where UserId = @UserId";
        private const string SELECT_USER_BY_USERNAME = "select * from User Where UserName = @UserName";
        public static List<User> GetUsers()
        { 
            List<User> UserList=new List<User>();
            using (MySqlDataReader sdr = MySqlHelper.ExecuteReader(MySqlHelper.CONN_STR, CommandType.Text, SELECT_ALL_USER))
            {
                while (sdr.Read())
                    UserList.Add(new User(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2)));
               
            }
            return UserList;
        }
        public static bool GetUserById(int UserId, out User user)
        {
            MySqlParameter parm = new MySqlParameter(PARAM_USERID, MySqlDbType.Int16, 8);
            parm.Value = UserId;
            using (MySqlDataReader sdr = MySqlHelper.ExecuteReader(MySqlHelper.CONN_STR, CommandType.Text, SELECT_USER_BY_USERID, parm))
            {
                if (sdr.Read())
                {
                    user = new User(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2));
                    return true;
                }
                else
                {
                    user = null;
                    return false;
                }
            }
        }
        public static bool GetUserByName(String UserName, out User user)
        {
            MySqlParameter parm = new MySqlParameter(PARAM_USERID, MySqlDbType.Int16, 8);
            parm.Value = UserName;
            using (MySqlDataReader sdr = MySqlHelper.ExecuteReader(MySqlHelper.CONN_STR, CommandType.Text, SELECT_USER_BY_USERNAME, parm))
            {
                if (sdr.Read())
                {
                    user = new User(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2));
                    return true;
                }
                else
                {
                    user = null;
                    return false;
                }
            }
        }
    }
}