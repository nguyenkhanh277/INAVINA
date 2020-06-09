using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class ReportSynthetic
    {
        #region Fields
        public DateTime RegistDate { get; set; }
        public string PartNo { get; set; }
        public double QuantityPrint { get; set; }
        public double QuantityScan { get; set; }
        public double QuantityOK { get; set; }
        public double QuantityNG { get; set; }
        #endregion
    }
}
