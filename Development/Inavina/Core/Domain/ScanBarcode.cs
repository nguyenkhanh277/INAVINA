using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class ScanBarcode : Base
    {
        #region Fields
        public string Id { get; set; }
        public string PartNo { get; set; }
        public DateTime ScanDate { get; set; }
        public string ShiftNo { get; set; }
        public string MachineNo { get; set; }
        public string Barcode { get; set; }
        public string UserID { get; set; }
        public GlobalConstants.ResultStatusValue ResultStatus { get; set; }
        public GlobalConstants.StatusValue Status { get; set; }
        #endregion
    }
}
