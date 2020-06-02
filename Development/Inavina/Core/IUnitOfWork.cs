using Inavina.Core.Repositories;
using System;
using Inavina.Persistence;

namespace Inavina.Core
{
    public interface IUnitOfWork : IDisposable
    {
        IUserRepository Users { get; }
        IAuthorityGroupRepository AuthorityGroups { get; }
        IProgramFunctionMasterRepository ProgramFunctionMasters { get; }
        IProgramFunctionAuthorityRepository ProgramFunctionAuthoritys { get; }
        IUserAuthorityRepository UserAuthoritys { get; }
        int Complete();
    }
}