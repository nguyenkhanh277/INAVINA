using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class Shift : Base
    {
        #region Fields
        public string Id { get; set; }
        public string ShiftNo { get; set; }
        public TimeSpan BeginTime { get; set; }
        public float LengthHours { get; set; }
        public string Note { get; set; }
        public GlobalConstants.StatusValue Status { get; set; }
        #endregion
    }
}
