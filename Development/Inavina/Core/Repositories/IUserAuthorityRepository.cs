using Inavina.Core.Domain;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Inavina.Persistence.Repositories;
using Inavina.Persistence;

namespace Inavina.Core.Repositories
{
    public interface IUserAuthorityRepository : IRepository<UserAuthority>
    {
        UserAuthority GetInfo(string id);
        IEnumerable<UserAuthority> GetAll(Dictionary<UserAuthorityRepository.SearchConditions, object> conditions);
        void Add(UserAuthority UserAuthority);
        void Update(UserAuthority UserAuthority);
        void Delete(string id);
        void Delete(UserAuthority UserAuthority);
        void DeleteRange(string ids);
        void DeleteRange(IEnumerable<UserAuthority> UserAuthoritys);
        void DeleteByUserID(string userID);
    }
}