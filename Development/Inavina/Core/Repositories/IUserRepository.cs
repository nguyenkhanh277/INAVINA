using Inavina.Core.Domain;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Inavina.Persistence.Repositories;
using Inavina.Persistence;

namespace Inavina.Core.Repositories
{
    public interface IUserRepository : IRepository<User>
    {
        User GetInfo(string id);
        IEnumerable<User> GetAll(Dictionary<UserRepository.SearchConditions, object> conditions);
        void Add(User user);
        void Update(User user);
        void Delete(string id);
        void Delete(User user);
        void DeleteRange(string ids);
        void DeleteRange(IEnumerable<User> users);
    }
}