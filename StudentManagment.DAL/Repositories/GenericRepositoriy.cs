
using Microsoft.EntityFrameworkCore;
using StudentManagment.DAL.Data;
using StudentManagment.DAL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagment.DAL.Repositories
{
    public class GenericRepositoriy<T> : IGenericRepositoriy<T> where T : class
    {   
        private DbSet<T> _dbSet;
        private readonly ApplicationDbContext _context;

        public GenericRepositoriy(ApplicationDbContext context)
        {
            _context = context;
            _dbSet = _context.Set<T>();
        }

        public T Get( Expression<Func<T, bool>>? perdicate = null)
        {
            return _dbSet.Where(perdicate).FirstOrDefault();
            
        }

        public IEnumerable<T> GetAll(Expression<Func<T, bool>>? perdicate = null)
        {
            return _dbSet.Where(perdicate).ToList();
        }

        public void Insert(T entity)
        {
            _dbSet.Add(entity);
        }

        public void Update(T entity)
        {
            _dbSet.Update(entity);
        }
        public void Delete(int id)
        {
            var entity = _dbSet.Find(id);
            _dbSet.Remove(entity);
        }

    }
}
