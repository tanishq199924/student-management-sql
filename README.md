# Student Course Management System (SQL)

A relational database project demonstrating core SQL skills, including table design, foreign key constraints, multi-table joins, and aggregate functions. 

## Project Description
This project simulates a university's backend system for managing students, course catalogs, and academic enrollments. It allows administrators to track student performance and calculate course averages.

## Database Schema
The database consists of three tables:
- **student**: Stores student demographic and academic details.
- **course**: Stores available courses and credit values.
- **enrollment**: A junction table linking students to courses, including their final grades.

## SQL Skills Applied
- Data Definition Language (DDL): `CREATE TABLE`
- Data Manipulation Language (DML): `INSERT INTO`
- Relational Logic: Primary Keys, Foreign Keys, `JOIN`
- Aggregation: `GROUP BY`, `AVG()`

## How to Run This Project
1. Install MySQL Server and a client like MySQL Workbench or Beekeeper Studio.
2. Run `schema.sql` to build the table structures.
3. Run `sample_data.sql` to populate the database with dummy students and enrollments.
4. Run the queries in `queries.sql` to view the analytical reports.