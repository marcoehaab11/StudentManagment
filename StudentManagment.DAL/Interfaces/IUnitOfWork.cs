﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagment.DAL.Interfaces

{
    public interface IUnitOfWork:IDisposable
    {
        IStudentRepository Students { get; }


        public void Complete();
    }
}
