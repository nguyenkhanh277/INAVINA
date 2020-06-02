using Inavina.Core.Domain;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Inavina.Persistence.Repositories;
using Inavina.Persistence;

namespace Inavina.Core.Repositories
{
    public interface IAuthorityGroupRepository : IRepository<AuthorityGroup>
    {
        AuthorityGroup GetInfo(int? id);
        IEnumerable<AuthorityGroup> GetAll(Dictionary<AuthorityGroupRepository.SearchConditions, object> conditions);
        void Add(AuthorityGroup AuthorityGroup);
        void Update(AuthorityGroup AuthorityGroup);
        void Delete(int? id);
        void Delete(AuthorityGroup AuthorityGroup);
        //void DeleteRange(string ids);
        void DeleteRange(IEnumerable<AuthorityGroup> AuthorityGroups);
    }
}