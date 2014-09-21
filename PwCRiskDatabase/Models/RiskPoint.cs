using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PwCRiskDatabase.Models
{
    public class RiskPoint
    {
        private string _PointNumber;
        private string _PointName;
        private string _TypeName;

        public RiskPoint(string _PointNumber, string _PointName)
        {
            this._PointNumber = _PointNumber;
            this._PointName = _PointName;
        }
        public string PointNumber
        {
            get { return this._PointNumber; }
            set { this._PointNumber = value; }
        }
        public string PointName
        {
            get { return this._PointName; }
            set { this._PointName = value; }
        }
    }
}