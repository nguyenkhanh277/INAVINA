using System;
using System.Collections.ObjectModel;

namespace Inavina.Core.Domain
{
    public class ProgramFunctionAuthority : Base
    {
        #region Fields
        public string Id { get; set; }
        public string ProgramName { get; set; }
        public string FunctionName { get; set; }
        public int? AuthorityGroupID { get; set; }
        #endregion
    }
}
