using PwCRiskDatabase.Models;
using PwCRiskDatabase.SQLServerDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PwCRiskDatabase.BLL
{
    public class UserBLL
    {
        public static bool IsValidUser(string UserName, string UserPwd)
        {
            List<User> UserList = UserDB.GetUsers();
            foreach (User user in UserList)
            {
                if (user.UserName == UserName && user.UserPwd == UserPwd)
                    return true;
            }
            return false;
        }
    }
}