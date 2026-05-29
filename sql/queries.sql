-- Running the required queries --

--  Patients diagnosed with 'Fatty liver' in the last year --
SELECT Name
FROM Patient
WHERE PatientID IN (
    SELECT PatientID
    FROM Appointment
    WHERE Diagnosis = 'Fatty liver' 
      AND Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

-- Addresses of cardiology clinics --
SELECT Clinic.Address
FROM Clinic
JOIN Department ON Clinic.DepartmentID = Department.DepartmentID
WHERE Department.Name = 'Cardiology';

-- Total money paid by patient with ID 12527 in the last 3 years --
SELECT SUM(Cost) AS TotalPaid
FROM Appointment
WHERE PatientID = 12527 
  AND Date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

-- Sample UPDATE queries --
UPDATE Patient
SET Address = 'New Address', PhoneNumber = 'New PhoneNumber'
WHERE PatientID = 12530;

UPDATE Appointment
SET Status = 'Postponed'
WHERE AppointmentID = 20003;

UPDATE Clinic
SET Address = '123 New Clinic Address'
WHERE ClinicID = 101;
