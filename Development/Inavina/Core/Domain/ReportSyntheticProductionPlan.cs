using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class ReportSyntheticProductionPlan
    {
        #region Fields
        public DateTime ExpectedDeliveryDate { get; set; }
        public string PartNo { get; set; }
        public double QuantityPlan { get; set; }
        public double QuantityScan { get; set; }
        public double QuantityOK { get; set; }
        public double QuantityNG { get; set; }
        #endregion
    }
}
