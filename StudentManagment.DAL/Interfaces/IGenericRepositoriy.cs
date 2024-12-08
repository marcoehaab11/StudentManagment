using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace StudentManagment.DAL.Interfaces
{
    public interface IGenericRepositoriy<T> where T : class
    {
        IEnumerable<T> GetAll(Expression<Func<T, bool>>? perdicate = null);
        T Get(Expression<Func<T, bool>>? perdicate = null);
        void Insert(T entity);
        void Update(T entity);
        void Delete(int id);

    }
}
