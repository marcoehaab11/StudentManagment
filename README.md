# Student Management Project

## Overview
This project is designed to manage student data, including adding new student records to the database. The project connects to a SQL Server database and inserts student data after ensuring the student's age is between 5 and 18 years old.

## Setup Instructions

### 1. **Database Connection:**
- Before running the project, make sure you have a **SQL Server database** set up. You can use any SQL Server instance that is accessible to the project.
- The connection string used to connect to the database is stored in the `appsettings.json` file under the **DatabaseSettings** section. 

**Important:** 
- **After restoring the database** (using a backup or other method), **don't forget to update the `connectionString`** in the `appsettings.json` file to reflect the correct server, database, and credentials. 

Example `connectionString`:
```json
"DatabaseSettings": {
  "ConnectionString": "Server=your_server_name;Database=StudentManagmentDB;Integrated Security=True;"
}
