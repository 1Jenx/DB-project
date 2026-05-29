-- Drops existing database if needed --
DROP DATABASE IF EXISTS Clinic_System;

-- Creates and uses the database --
CREATE DATABASE Clinic_System;
USE Clinic_System;

-- Creates Department table --
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

-- Creates Clinic table --
CREATE TABLE Clinic (
    ClinicID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Creates Doctor table --
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Creates Patient table --
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(100),
    BirthDate DATE,
    Job VARCHAR(50)
);

-- Creates Appointment table --
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    Date DATE,
    PatientID INT,
    DoctorID INT,
    StartTime TIME,
    EndTime TIME,
    Cost DECIMAL(10,2),
    Status VARCHAR(20),
    Diagnosis VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
