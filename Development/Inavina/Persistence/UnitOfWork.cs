using System.Data.Entity;
using Inavina.Core;
using Inavina.Core.Repositories;
using Inavina.Persistence.Repositories;

namespace Inavina.Persistence
{
    public class UnitOfWork : IUnitOfWork
    {
        private ProjectDataContext _projectDataContext;

        public UnitOfWork(ProjectDataContext projectDataContext)
        {
            this._projectDataContext = projectDataContext;
        }

        public int Complete()
        {
            return _projectDataContext.SaveChanges();
        }

        public void Dispose()
        {
            _projectDataContext.Dispose();
        }
    }
}