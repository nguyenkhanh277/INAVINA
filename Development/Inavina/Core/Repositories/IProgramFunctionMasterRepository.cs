using Inavina.Core.Domain;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Inavina.Persistence.Repositories;
using Inavina.Persistence;

namespace Inavina.Core.Repositories
{
    public interface IProgramFunctionMasterRepository : IRepository<ProgramFunctionMaster>
    {
        ProgramFunctionMaster GetInfo(string id);
        IEnumerable<ProgramFunctionMaster> GetAll(Dictionary<ProgramFunctionMasterRepository.SearchConditions, object> conditions);
        void Add(ProgramFunctionMaster ProgramFunctionMaster);
        void Update(ProgramFunctionMaster ProgramFunctionMaster);
        void Delete(string id);
        void Delete(ProgramFunctionMaster ProgramFunctionMaster);
        void DeleteRange(string ids);
        void DeleteRange(IEnumerable<ProgramFunctionMaster> ProgramFunctionMasters);
    }
}