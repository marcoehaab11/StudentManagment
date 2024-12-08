﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StudentManagment.DAL.Migrations
{
    /// <inheritdoc />
    public partial class add_softDeleteToStudent : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "isDeleted",
                table: "Students",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "isDeleted",
                table: "Students");
        }
    }
}