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
    public class RiskTypeDB 
    {
        private const string PARAM_TYPENUMBER = "?TypeNumber";
        private const string PARAM_TYPENAME = "?TypeName";

        private const string SELECT_ALL_TYPE = "select * from risk_type";
        private const string SELECT_TYPE_BY_TYPENAME = "select * from risk_type where risk_type_number = ?TypeNumber";

        private const string DELETE_TYPE_BY_TYPENAME = "delete from risk_type where risk_type_number = ?TypeNumber";

        private const string INSERT_TYPE = "insert into risk_type(risk_type_number, risk_type_name )values(?TypeNumber, ?TypeName)";

        private const string UPDATE_TYPE = "update risk_type set risk_type_number=?TypeNumber, risk_type_name=?TypeName where risk_type_number = ?TypeNumber";
        public static List<RiskType> GetTypes()
        {
            List<RiskType> TypeList = new List<RiskType>();
            using (MySqlDataReader sdr = MySqlHelper.ExecuteReader(MySqlHelper.CONN_STR, CommandType.Text, SELECT_ALL_TYPE))
            {
                while (sdr.Read())
                    TypeList.Add(new RiskType(sdr.GetString(0), sdr.GetString(0)));

            }
            return TypeList;
        }
        public static bool GetTypeByNumber(String TypeNumber, out RiskType type)
        {
            MySqlParameter parm = new MySqlParameter(PARAM_TYPENUMBER, MySqlDbType.VarChar, 45);
            parm.Value = TypeNumber;
            using (MySqlDataReader sdr = MySqlHelper.ExecuteReader(MySqlHelper.CONN_STR, CommandType.Text, SELECT_TYPE_BY_TYPENAME, parm))
            {
                if (sdr.Read())
                {
                    type = new RiskType(sdr.GetString(0), sdr.GetString(1));
                    return true;
                }
                else
                {
                    type = null;
                    return false;
                }
            }
        }
        public static bool DeleteTypeByNumber(String TypeNumber)
        {
            MySqlParameter parm = new MySqlParameter(PARAM_TYPENUMBER, MySqlDbType.VarChar, 45);
            parm.Value = TypeNumber;
            return MySqlHelper.ExecuteNonQuery(MySqlHelper.CONN_STR, CommandType.Text, DELETE_TYPE_BY_TYPENAME, parm);
        }
        public static bool InsertType(RiskType type)
        {
            MySqlParameter[] parms = new MySqlParameter[] { 
                new MySqlParameter(PARAM_TYPENUMBER, type.TypeNumber),
                new MySqlParameter(PARAM_TYPENAME, type.TypeName)};
            return MySqlHelper.ExecuteNonQuery(MySqlHelper.CONN_STR, CommandType.Text, INSERT_TYPE, parms);
        }
        public static bool UpdateType(RiskType type)
        {
            MySqlParameter[] parms = new MySqlParameter[] { 
                new MySqlParameter(PARAM_TYPENUMBER, type.TypeNumber),
                new MySqlParameter(PARAM_TYPENAME, type.TypeName)};
            return MySqlHelper.ExecuteNonQuery(MySqlHelper.CONN_STR, CommandType.Text, UPDATE_TYPE, parms);
        }
    }
}