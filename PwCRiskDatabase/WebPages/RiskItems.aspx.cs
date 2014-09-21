using PwCRiskDatabase.Models;
using PwCRiskDatabase.SQLServerDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PwCRiskDatabase.WebPages
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label lblTitle;
        protected System.Web.UI.WebControls.Label lblDataTime;
        protected System.Web.UI.WebControls.Label lblContent;
        protected System.Web.UI.WebControls.Label lblMsg;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*RiskType type;
            if (RiskTypeDB.GetTypeByNumber("M",out type))
                this.lblTitle.Text = type.TypeName;
            RiskTypeDB.DeleteTypeByNumber("M");
            RiskTypeDB.InsertType(new RiskType("Z","hello"));
            RiskTypeDB.UpdateType(new RiskType("Z","45654"));*/
        }
    }
}