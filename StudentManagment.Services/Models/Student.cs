using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagment.Models
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        [Range(5,18, ErrorMessage = "العمر يجب أن يكون بين 5 و 18.")]
        public int Age { get; set; }
        public string Grade{ get; set; }

        public bool isDeleted { get; set; } = false;
    }
}
