using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StudentManagment.DAL.Interfaces;
using StudentManagment.Models;

namespace StudentManagmentAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private IUnitOfWork _unitOfWork;

        public StudentController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        [HttpPost]
        public async Task<IActionResult> AddStudent([FromBody] Student student)
        {
            if(string.IsNullOrEmpty(student.Name) || !( student.Age<=18 && student.Age>=5 ))
            {
                return BadRequest("Invalid data.");
            }
            _unitOfWork.Students.Insert(student);
            _unitOfWork.Complete();
            
            return Ok("The Student Added");
        }

        [HttpGet]
        public async Task<IActionResult> GetAllStudents()
        {
            var students =  _unitOfWork.Students.GetAll(i=>i.isDeleted==false);
            if (students == null || !students.Any())
            {
                return NotFound("No students found.");
            }

            return Ok(students);
        }
 
        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetStudentById(int id)
        {
            var student =  _unitOfWork.Students.Get(i=>i.Id==id && i.isDeleted==false);
            if (student == null)
            {
                return NotFound($"Student with ID {id} not found.");
            }

            return Ok(student);
        }
        [HttpPut("{id:int}")]
        public async Task<IActionResult> UpdateStudent(int id, [FromBody] Student updatedStudent)
        {
            if (id != updatedStudent.Id)
            {
                return BadRequest("Student ID mismatch.");
            }
            if (string.IsNullOrEmpty(updatedStudent.Name) || !(updatedStudent.Age <= 18 && updatedStudent.Age >= 5))
            {
                return BadRequest("Invalid data.");
            }
            var student =  _unitOfWork.Students.Get(i=>i.Id==id);
            if (student == null)
            {
                return NotFound($"Student with ID {id} not found.");
            }

            student.Name = updatedStudent.Name;
            student.Age = updatedStudent.Age;
            student.Grade = updatedStudent.Grade;
            student.isDeleted = updatedStudent.isDeleted;

            _unitOfWork.Students.Update(student);
             _unitOfWork.Complete();

            return Ok("The student was updated successfully.");
        }
        
        [HttpDelete]
        public async Task<IActionResult> DeleteStudent(int id)
        {
            var student =  _unitOfWork.Students.Get(i=>i.Id==id);
            if (student == null)
            {
                return NotFound($"Student with ID {id} not found.");
            }

            student.isDeleted=true;
            _unitOfWork.Complete();
            return Ok("The student was deleted successfully.");
        }
    }
}
