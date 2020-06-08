using Inavina.Core.Repositories;
using System;
using Inavina.Persistence;

namespace Inavina.Core
{
    public interface IUnitOfWork : IDisposable
    {
        int Complete();
    }
}