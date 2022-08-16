
-- query1
select donor_name
from blood_bank
where blood_bank_address = 'LA' and Blood_Quantity > 1;
 
-- query2 
SELECT sum(blood_Quantity)
as TotalOBloodInLA FROM blood_bank where blood_type = 'O' group by'LA';

-- query3 
SELECT Blood_Organization_Name, blood_type
FROM Blood_bank
where blood_quantity < 10;

-- query 4
SELECT Patient_Name, Donated_Date
FROM blood_report 
INNER JOIN patient ON blood_report.Patient_ID = patient.Patient_ID
INNER JOIN hospital ON patient.hospital_id = hospital.hospital_id
WHERE Donated_Date < '2018-02-26';

-- query 5
SELECT Hospital_Name, Patient_Name
FROM Hospital
INNER JOIN Patient ON Hospital.Hospital_ID = Patient.Hospital_ID
WHERE blood_type = 'A';