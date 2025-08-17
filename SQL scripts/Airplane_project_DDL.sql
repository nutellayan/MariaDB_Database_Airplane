DROP TABLE IF EXISTS airplane_model;
CREATE TABLE airplane_model (
   	 model_number VARCHAR(20) PRIMARY KEY,
    	capacity INT,
   	 weight DECIMAL(10,2)
);
DROP TABLE IF EXISTS airplane;
CREATE TABLE airplane (
    	registration_number VARCHAR(20) PRIMARY KEY,
    	model_number VARCHAR(20),
    	manufacturer VARCHAR(50),
    	year_built INT,
    	FOREIGN KEY (model_number) REFERENCES airplane_model(model_number)
);
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    ssn CHAR(9) PRIMARY KEY,
  	    name VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(15),
    salary DECIMAL(10,2)
);
DROP TABLE IF EXISTS technician;
CREATE TABLE technician (
 	 ssn CHAR(9) PRIMARY KEY,
   	 FOREIGN KEY (ssn) REFERENCES employee(ssn)
);
DROP TABLE IF EXISTS traffic_controller;
CREATE TABLE traffic_controller (
    	ssn CHAR(9) PRIMARY KEY,
    	recent_medical_exam_date DATE,
    	FOREIGN KEY (SSN) REFERENCES employee(ssn)
);
DROP TABLE IF EXISTS technician_expertise;
CREATE TABLE technician_expertise (
    	ssn CHAR(9), 
    	model_number VARCHAR(20),
    	PRIMARY KEY (ssn, model_number),
    	FOREIGN KEY (ssn) REFERENCES technician(ssn),
    	FOREIGN KEY (model_number) REFERENCES airplane_model(model_number)
);
DROP TABLE IF EXISTS faa_test;
CREATE TABLE faa_test (
    	faa_test_number VARCHAR(10) PRIMARY KEY,
    	name VARCHAR(50),
    	max_score INT);

DROP TABLE IF EXISTS testing_event;
CREATE TABLE testing_event (
    	registration_number VARCHAR(20),
    	technician_ssn CHAR(9),
    	faa_test_number VARCHAR(10),
    	test_date DATE,
    	hours_spent DECIMAL(5,2),
    	score INT,
    	PRIMARY KEY (registration_number, technician_ssn, faa_test_number, test_date),
    	FOREIGN KEY (registration_number) REFERENCES airplane(registration_number),
    	FOREIGN KEY (technician_ssn) REFERENCES technician(ssn),
    	FOREIGN KEY (faa_test_number) REFERENCES faa_test(faa_test_number)
);
DROP TABLE IF EXISTS employee_union;
CREATE TABLE employee_union (
    	ssn CHAR(9),
    	union_id VARCHAR(20), 
union_membership_number VARCHAR(20),
    	PRIMARY KEY (ssn, union_id),
    	FOREIGN KEY (ssn) REFERENCES employee(ssn),
   	FOREIGN KEY (union_id) REFERENCES unions(union_id)
);
DROP TABLE IF EXISTS unions;
CREATE TABLE unions (
    union_id VARCHAR(10) PRIMARY KEY,
    union_name VARCHAR(100) NOT NULL);
