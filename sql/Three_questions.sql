-- Q1 --

DELIMITER //
CREATE TRIGGER prevent_doctor_overlap 
BEFORE INSERT ON Appointment 
FOR EACH ROW 
BEGIN 
    DECLARE overlap_count INT; 
    -- Check if any existing appointment for the same doctor and date overlaps --
    -- Overlap Condition: (NewStart < ExistingEnd) AND (NewEnd > ExistingStart) --
    SELECT COUNT(*) INTO overlap_count 
    FROM Appointment 
    WHERE DoctorID = NEW.DoctorID 
      AND Date = NEW.Date 
      AND NEW.StartTime < EndTime  
      AND NEW.EndTime > StartTime; 
    -- If an overlap exists, block the insertion and return an error message 
    IF overlap_count > 0 THEN 
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: Doctor is already booked during this time slot.'; 
    END IF; 
END; // 

-- Q2 --
SELECT  
    p.PatientID, 
    p.Name AS Patient_Name, 
    MAX(a.Date)    AS Most_Recent_Appointment 
FROM Patient p 
LEFT JOIN Appointment a ON p.PatientID = a.PatientID 
GROUP BY p.PatientID, p.Name 
ORDER BY Most_Recent_Appointment DESC; 

-- Q3 --
CREATE VIEW vw_Doctor_Schedule_NextMonth AS 
SELECT  
    d.DoctorID, 
    d.Name AS Doctor_Name, 
    COUNT(a.AppointmentID) AS Appointment_Count 
FROM Doctor d 
LEFT JOIN Appointment a  
       ON d.DoctorID = a.DoctorID 
      AND a.Date BETWEEN '2026-06-01' AND '2026-06-30' 
GROUP BY d.DoctorID, d.Name;   