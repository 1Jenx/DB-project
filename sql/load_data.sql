-- Inserts Department data --
INSERT INTO Department VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Dermatology'),
(4, 'Otolaryngology'),
(5, 'Pediatrics'),
(6, 'Urology'),
(7, 'Oncology'),
(8, 'Psychiatry'),
(9, 'Gastroenterology'),
(10, 'Dentistry');

-- Inserts Clinic data --
INSERT INTO Clinic VALUES
(101, 'HeartCare Cardiology Clinic', '123 Riverdale', 1),
(102, 'NeuroHealth Neurology Center', '456 Pine Harbor', 2),
(103, 'ClearSkin Dermatology Clinic', '789 Clearwater Heights', 3),
(104, 'Harmony ENT Clinic', '321 Brookfield', 4),
(105, 'Little Stars Pediatrics Clinic', '654 Brookfield', 5),
(106, 'Advanced Urology Center', '987 Brookfield', 6),
(107, 'Hope Oncology Institute', '159 Stonebridge', 7),
(108, 'MindWell Psychiatry Clinic', '753 Meadowbrook', 8),
(109, 'Digestive Health Gastroenterology Center', '258 Hillcrest', 9),
(110, 'Bright Smile Dental Clinic', '369 Spring Valley', 10);

-- Inserts Doctor data --
INSERT INTO Doctor VALUES
(201, 'Dr. Ayman', '111-1111', '42 Maple St', 1),
(202, 'Dr. Leila', '222-2222', '87 Oak Ave', 2),
(203, 'Dr. Sara', '333-3333', '15 Cedar Rd', 3),
(204, 'Dr. Omar', '444-4444', '63 Willow Ln', 4),
(205, 'Dr. Hana', '555-5555', '29 Birch St', 5),
(206, 'Dr. Adel', '666-6666', '91 Pine Ave', 6),
(207, 'Dr. Kamal', '777-7777', '54 Elm Rd', 7),
(208, 'Dr. Rania', '888-8888', '18 Cherry Ln', 8),
(209, 'Dr. Mona', '999-9999', '67 Aspen St', 9),
(210, 'Dr. Youssef', '000-0000', '33 Grove Ave', 10);

-- Inserts Patient data --
INSERT INTO Patient VALUES
(12527, 'Mohamed Ahmed', '0100000000', '24 River St', '2000-01-01', 'Teacher'),
(12528, 'Sara Mohamed', '0100000001', '68 Park Ave', '1985-05-20', 'Engineer'),
(12529, 'Ahmed Galal', '0100000002', '11 Hill Rd', '1992-03-15', 'Accountant'),
(12530, 'Mariam Fathy', '0100000003', '57 Lake Ln', '1988-07-10', 'Designer'),
(12531, 'Jana Khaled', '0100000004', '83 Meadow St', '1991-09-25', 'Nurse'),
(12532, 'Ahmed Hany', '0100000005', '36 Forest Ave', '1987-11-30', 'Lawyer'),
(12533, 'Farah Samir', '0100000006', '72 Valley Rd', '1996-02-05', 'Pharmacist'),
(12534, 'Habiba Said', '0100000007', '19 Sunset Ln', '1993-07-17', 'Banker'),
(12535, 'Omar Sherif', '0100000008', '45 Garden St', '1987-06-12', 'Driver'),
(12536, 'Huda Abdullah', '0100000009', '98 Ridge Ave', '1989-08-19', 'Doctor');

-- Inserts Appointment data --
INSERT INTO Appointment VALUES
(20001, '2025-12-01', 12527, 201, '09:00', '09:30', 100.00, 'Completed', 'Fatty liver'),
(20002, '2025-12-15', 12528, 202, '10:00', '10:30', 80.00, 'Completed', 'Migraine'),
(20003, '2024-05-01', 12529, 203, '11:00', '11:30', 70.00, 'Postponed', 'Acne'),
(20004, '2025-12-20', 12530, 204, '13:00', '13:30', 120.00, 'Completed', 'Knee pain'),
(20005, '2026-01-10', 12531, 205, '14:00', '14:30', 90.00, 'Completed', 'Flu'),
(20006, '2024-01-05', 12532, 206, '08:00', '08:30', 60.00, 'Completed', 'Diabetes'),
(20007, '2025-02-14', 12533, 207, '12:00', '12:30', 150.00, 'Completed', 'Cancer'),
(20008, '2025-05-25', 12534, 208, '09:30', '10:00', 110.00, 'Completed', 'Anxiety'),
(20009, '2024-08-18', 12535, 209, '10:30', '11:00', 95.00, 'Completed', 'Ulcer'),
(20010, '2026-03-11', 12536, 210, '15:00', '15:30', 130.00, 'Completed', 'Thyroid');
