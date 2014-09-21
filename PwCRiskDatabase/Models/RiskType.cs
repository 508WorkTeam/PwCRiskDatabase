using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PwCRiskDatabase.Models
{
    public class RiskType
    {
        private string _TypeNumber;
        private string _TypeName;

        public RiskType(string _TypeNumber, string _TypeName)
        {
            this._TypeNumber = _TypeNumber;
            this._TypeName = _TypeName;
        }
        public string TypeNumber
        {
            get { return this._TypeNumber; }
            set { this._TypeNumber = value; }
        }
        public string TypeName
        {
            get { return this._TypeName; }
            set { this._TypeName = value; }
        }
    }
}