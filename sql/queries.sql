-- Running the required queries --

--  Patients diagnosed with 'Migraine' in the last year --
SELECT Name
FROM Patient
WHERE PatientID IN (
    SELECT PatientID
    FROM Appointment
    WHERE Diagnosis = 'Migraine' 
      AND Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

-- Addresses of cardiology clinics --
SELECT Clinic.Address
FROM Clinic
JOIN Department ON Clinic.DepartmentID = Department.DepartmentID
WHERE Department.Name = 'Dermatology';

-- Total money paid by patient with ID 12527 in the last 3 years --
SELECT SUM(Cost) AS TotalPaid
FROM Appointment
WHERE PatientID = 12529 
  AND Date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

-- Sample UPDATE queries --
UPDATE Patient
SET Address = 'New Address', PhoneNumber = 'New PhoneNumber'
WHERE PatientID = 12533;

UPDATE Appointment
SET Status = 'Postponed'
WHERE AppointmentID = 20003;

UPDATE Clinic
SET Address = '123 New Clinic Address'
WHERE ClinicID = 101;
