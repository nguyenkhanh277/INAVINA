using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class PartNumber : Base
    {
        #region Fields
        public string Id { get; set; }
        public string PartNo { get; set; }
        public string Model { get; set; }
        public string Note { get; set; }
        public GlobalConstants.StatusValue Status { get; set; }
        #endregion
    }
}
