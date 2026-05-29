# Clinic Management System

## Project Overview

The Clinic Management System is a relational database project designed to support the management of healthcare operations. The database stores and organizes information related to patients, doctors, appointments, clinics, and departments. The project demonstrates the use of SQL for database design, data population, querying, and maintaining relationships between entities in a healthcare environment.

---

## Project Objectives

* Develop a structured and normalized database for managing clinic activities.
* Support essential database operations, including Create, Read, Update, and Delete (CRUD).
* Implement practical SQL queries for common healthcare management tasks.
* Ensure data consistency and integrity through primary keys, foreign keys, and constraints.
* Demonstrate the use of relational database concepts in a real-world application.

---

## Database Structure

Entities & Attributes:

* Department –> DepartmentID, Name.
* Clinic –> ClinicID, Name, Address, DepartmentID
* Doctor –> DoctorID, Name, Phone, Address, DepartmentID.
* Patient –> PatientID, Name, Phone, Address, BirthDate, Job.
* Appointment –> AppointmentID, Date, PatientID, DoctorID, StartTime, EndTime, Cost, Status, Diagnosis.

---

## Relationships

* One Department -> Many Clinics
* One Department -> Many Doctors
* One Clinic -> One Department
* One Doctor -> Many Appointments
* One Patient -> Many Appointments

---

## Data Overview

Sample Data Includes:

* 10 Departments (Cardiology, Neurology, Pediatrics, Oncology).
* 10 Clinics linked to departments.
* 10 Doctors assigned to departments.
* 10 Patients with personal details.
* 10 Appointments with diagnosis, cost, and status.

---

## Example SQL Queries

### 1- Patients diagnosed with Fatty liver in the last year

SELECT Name
FROM Patient
WHERE PatientID IN (
SELECT PatientID
FROM Appointment
WHERE Diagnosis = 'Fatty liver'
AND Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

### 2- Addresses of Cardiology clinics

SELECT Clinic.Address
FROM Clinic
JOIN Department ON Clinic.DepartmentID = Department.DepartmentID
WHERE Department.Name = 'Cardiology';

### 3- Total money paid by patient 12527 in the last 3 years

SELECT SUM(Cost) AS TotalPaid
FROM Appointment
WHERE PatientID = 12527
AND Date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

### 4- Update patient contact information

UPDATE Patient
SET Address = 'New Address', PhoneNumber = 'New PhoneNumber'
WHERE PatientID = 12530;

---

##Setup Instructions

### 1️- Create the database and tables

DROP DATABASE IF EXISTS Clinic_System;
CREATE DATABASE Clinic_System;
USE Clinic_System;

* Create tables (Department, Clinic, Doctor, Patient, Appointment)
* Add foreign keys and constraints

### 2- Populate with sample data

INSERT INTO Department VALUES
(1, 'Cardiology'), (2, 'Neurology'), (3, 'Dermatology'), ...;

### 3-Run queries

Test the provided SELECT, UPDATE, and JOIN queries.

---



## Learning Outcomes

* Designing a normalized relational database with multiple entity relationships.
* Creating and managing tables using SQL.
* Writing SQL queries involving joins, subqueries, and aggregate functions.
* Applying primary and foreign key constraints to maintain data integrity.
* Populating a database with realistic healthcare-related data.
* Understanding the practical implementation of database systems in healthcare management.

---

## Conclusion

This project demonstrates how a relational database can be used to efficiently manage clinic operations and healthcare records. Through structured database design, well-defined relationships, and practical SQL operations, the system provides an organized solution for handling patient information, doctor assignments, clinic departments, and appointments. The design is scalable and can be extended in the future with additional features such as a graphical user interface, authentication mechanisms, and advanced reporting capabilities.
