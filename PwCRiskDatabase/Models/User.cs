using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PwCRiskDatabase.Models
{
    public class User
    {
        private int _UserId;
        private string _UserName;
        private string _UserPwd;

        public User(int _UserId, string _UserName, string _UserPwd)
        {
            this._UserId = _UserId;
            this._UserName = _UserName;
            this._UserPwd = _UserPwd;
        }
        public int UserId
        {
            get { return this._UserId; }
            set { this._UserId = value; }
        }
        public string UserName
        {
            get { return this._UserName; }
            set { this._UserName = value; }
        }
        public string UserPwd
        {
            get { return this._UserPwd; }
            set { this._UserPwd = value; }
        }
    }
}