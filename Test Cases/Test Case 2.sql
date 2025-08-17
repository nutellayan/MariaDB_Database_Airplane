SELECT 
    t.ssn AS technician_ssn,
    eu.union_id,
    eu.union_membership_number,
    a.model_number
FROM technician t
JOIN employee_union eu ON t.ssn = eu.ssn
JOIN testing_event te ON t.ssn = te.technician_ssn
JOIN airplane a ON te.registration_number = a.registration_number;
