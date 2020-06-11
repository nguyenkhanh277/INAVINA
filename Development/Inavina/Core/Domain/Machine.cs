using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class Machine : Base
    {
        #region Fields
        public string Id { get; set; }
        public string MachineNo { get; set; }
        public string MachineName { get; set; }
        public string Note { get; set; }
        public GlobalConstants.StatusValue Status { get; set; }
        #endregion
    }
}
