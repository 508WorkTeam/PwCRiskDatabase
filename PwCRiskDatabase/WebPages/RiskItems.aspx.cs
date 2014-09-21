using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using PwCRiskDatabase.Models;
using PwCRiskDatabase.SQLServerDAL;

namespace PwCRiskDatabase.WebPages
{
    public partial class RiskItems : System.Web.UI.Page
    {
        [WebMethod]
        public static List<RiskType> GetData()
        {
            List<RiskType> Types = RiskTypeDB.GetTypes();
            return Types;
        }
    }
}