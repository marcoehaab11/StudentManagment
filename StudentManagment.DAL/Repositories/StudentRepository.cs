using StudentManagment.DAL.Data;
using StudentManagment.DAL.Interfaces;
using StudentManagment.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagment.DAL.Repositories

{
    public class StudentRepository : GenericRepositoriy<Student>, IStudentRepository
    {
        public StudentRepository(ApplicationDbContext context) : base(context)
        {
        }
    }
}
