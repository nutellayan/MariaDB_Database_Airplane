INSERT INTO airplane_model VALUES 
(A320, 180, 73500.00),
(B737, 189, 79015.00),
(B787, 296, 254000.00),
(A350, 325, 275000.00),
(E190, 114, 51800.00),
(CRJ900, 90, 36000.00),
(MD810, 155, 67000.00),
(B777, 396, 297000.00),
(A330, 277, 230000.00),
(ATR72, 78, 23000.00);

INSERT INTO airplane VALUES
(G-A320-001, A320, Airbus, 2016),
(G-B737-002, B737, Boeing, 2014),
(G-B787-003, B787, Boeing, 2019),
(G-A350-004, A350, Airbus, 2020),
(G-E190-005, E190, Embraer, 2015),
(G-CRJ9-006, CRJ900, Bombardier, 2013),
(G-MD80-007, MD810, McDonnell Douglas, 2009),
(G-B777-008, B777, Boeing, 2021),
(G-A330-009, A330, Airbus, 2017),
(G-ATR7-010, ATR72, ATR, 2012);

INSERT INTO employee (ssn, name, address, phone_number, salary) VALUES
('666778888', 'Fatima Khan', '101 Jetstream Cir', '07666778899', 45500.00),
('777889999', 'George Liu', '202 Hanger Rd', '07777889900', 46250.00),
('888990000', 'Hannah Green', '303 Terminal Blvd', '07888990011', 47500.00),
('999001111', 'Isaac Tanaka', '404 Cockpit Ct', '07999001122', 45200.00),
('000112222', 'Jasmine Cole', '505 Skypark Ave', '07000112233', 46800.00),
('111223333', 'Alex Tam', '123 Aviation Rd', '07123456789', 45000.00),
('222334444', 'Bella Wong', '456 Skyway Ave', '07222334455', 47000.00),
('333445555', 'Chris Patel', '789 Flight St', '07333445566', 48000.00),
('444556666', 'Dana Lee', '159 Runway Ln', '07444556677', 46000.00),
('555667777', 'Evan Smith', '753 Propeller Blvd', '07555667788', 44000.00),
('101112113', 'Noah Mitchell', '901 Control Tower Rd', '07111222333', 48000.00),
('121314151', 'Olivia Sanders', '902 Airfield Ave', '07222333444', 49500.00),
('161718192', 'Liam Foster', '903 Radar Blvd', '07333444555', 51000.00);
('202122232', 'Emma Watson', '123 Maple St', '07000000001', 45000.00),
('242526272', 'Liam Johnson', '456 Oak Ave', '07000000002', 46000.00),
('282930313', 'Sophia Lee', '789 Pine Rd', '07000000003', 47000.00),
('323334353', 'Noah Smith', '321 Birch Blvd', '07000000004', 48000.00),
('363738393', 'Isabella Brown', '654 Cedar Ln', '07000000005', 49000.00),
('404142434', 'Mason Davis', '987 Spruce Ct', '07000000006', 50000.00),
('444546474', 'Olivia Martinez', '135 Elm St', '07000000007', 51000.00);

INSERT INTO technician VALUES 
(666778888),
(777889999),
(888990000),
(999001111),
(000112222),
(111223333),
(222334444),
(333445555),
(444556666),
(555667777);

INSERT INTO traffic_controller VALUES
(101112113, 2025-06-10),
(121314151, 2025-06-14),
(161718192, 2025-06-18),
(202122232, 2025-06-22),
(242526272, 2025-06-25),
(282930313, 2025-06-28),
(323334353, 2025-07-01),
(363738393, 2025-07-04),
(404142434, 2025-07-08),
(444546474, 2025-07-12);

INSERT INTO technician_expertise VALUES 
(111223333, A320),
(111223333, B737),
(222334444, A320),
(222334444, B787),
(777889999, B737),
(333445555, E190),
(444556666, B777),
(555667777, A350),
(999001111, CRJ900),
(000112222, A330);

INSERT INTO faa_test VALUES 
(FAA001, Hydraulic System Check, 100),
(FAA002, Avionics Calibration, 100),
(FAA003, Engine Thrust Evaluation, 100),
(FAA004, Landing Gear Inspection, 100),
(FAA005, Cabin Pressure Integrity Test, 100),
(FAA006, Fuel System Diagnostics, 100),
(FAA007, Electrical Wiring Integrity, 100),
(FAA008, Flight Control Calibration, 100),
(FAA009, Weather Radar Operation, 100),
(FAA010, Brake System Response Test, 100);

INSERT INTO testing_event VALUES 
(G-A320-001, 111223333, FAA001, 2025-06-01, 3.5, 85),
(G-B737-002, 222334444, FAA002, 2025-06-05, 2.8, 90),
(G-A320-001, 333445555, FAA003, 2025-06-10, 2.5, 88),
(G-B737-002, 444556666, FAA004, 2025-06-14, 3.2, 92),
(G-A320-001, 555667777, FAA005, 2025-06-18, 2.0, 87),
(G-B737-002, 111223333, FAA006, 2025-06-20, 3.0, 91),
(G-A320-001, 222334444, FAA007, 2025-06-22, 2.6, 86),
(G-B737-002, 333445555, FAA008, 2025-06-24, 3.1, 93),
(G-A320-001, 000112222, FAA009, 2025-06-26, 2.3, 89),
(G-B737-002, 555667777, FAA010, 2025-06-28, 2.9, 95);

INSERT INTO unions VALUES
(U001, National Aerospace Union),
(U002, Technicians Alliance),
(U003, Aircraft Engineers Union),
(U004, Flight Safety Workers Union),
(U005, Air Maintenance Crew Union),
(U006, Union of Aviation Professionals),
(U007, National Air Traffic Controllers Union),
(U008, Airport Ground Staff Union),
(U009, Aviation Safety & Logistics Union),
(U010, Global Aerospace Workers Union);

INSERT INTO employee_union VALUES
(111223333, U001, MEM001),
(222334444, U002, MEM002),
(333445555, U003, MEM003),
(444556666, U004, MEM004),
(555667777, U005, MEM005),
(666778888, U006, MEM006),
(777889999, U007, MEM007),
(888990000, U008, MEM008),
(999001111, U009, MEM009),
(000112222, U010, MEM010),
(101112113, U007, MEM011),  
(121314151, U007, MEM012);
