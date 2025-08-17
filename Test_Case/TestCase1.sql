SELECT 
    technician.ssn,
    employee.name AS technician_name,
    technician_expertise.model_number,
    COUNT(*) AS total_tests,
    AVG(testing_event.score) AS average_score,
    (
        SELECT GROUP_CONCAT(DISTINCT faa_test.name)
        FROM testing_event AS te2
        JOIN faa_test ON te2.faa_test_number = faa_test.faa_test_number
        WHERE te2.technician_ssn = technician.ssn
    ) AS tests_conducted
FROM technician
JOIN employee ON technician.ssn = employee.ssn
JOIN technician_expertise ON technician.ssn = technician_expertise.ssn
JOIN testing_event ON testing_event.technician_ssn = technician.ssn
JOIN airplane ON testing_event.registration_number = airplane.registration_number
WHERE airplane.model_number = technician_expertise.model_number
GROUP BY technician.ssn, employee.name, technician_expertise.model_number;
