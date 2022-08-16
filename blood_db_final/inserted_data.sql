-- Blood bank
INSERT INTO blood_bank (Blood_Bank_ID, Donor_Name, Blood_Organization_Name, Donor_ID, Blood_Quantity, Blood_Type, blood_bank_address)
VALUES (123456, 'Tom B. Erichsen', 'Blood Assurance, Inc', 436789, 3, 'A', 'LA');

INSERT INTO blood_bank (Blood_Bank_ID, Donor_Name, Blood_Organization_Name, Donor_ID, Blood_Quantity, Blood_Type, blood_bank_address)
VALUES (123457, 'Amy', 'Blood Assurance, Inc', 416789, 5, 'A', 'LA');

INSERT INTO blood_bank (Blood_Bank_ID, Donor_Name, Blood_Organization_Name, Donor_ID, Blood_Quantity, Blood_Type, blood_bank_address)
VALUES (123454, 'Wilman ', 'America Blood Centers', 452589, 2, 'O', 'LA');

INSERT INTO blood_bank (Blood_Bank_ID, Donor_Name, Blood_Organization_Name, Donor_ID, Blood_Quantity, Blood_Type, blood_bank_address)
VALUES (123453, 'Cardinal', 'Delta Blood Bank', 456349, 1, 'B', 'AZ');

INSERT INTO blood_bank (Blood_Bank_ID, Donor_Name, Blood_Organization_Name, Donor_ID, Blood_Quantity, Blood_Type, blood_bank_address)
VALUES (123452, 'Jessie', 'America Blood Centers', 456789, 10, 'O', 'NY');

-- Blood Organization
INSERT INTO blood_organization (Blood_Organization_ID, Blood_Organization_Name, Phone_Number, Blood_Bank_ID, blood_organization_address)
VALUES (345678, 'New York Blood Center ', 234566788, 123452, 'NY');

INSERT INTO blood_organization (Blood_Organization_ID, Blood_Organization_Name, Phone_Number, Blood_Bank_ID, blood_organization_address)
VALUES (356789, 'AZ Blood Center ', 234345788, 123453, 'AZ');

INSERT INTO blood_organization (Blood_Organization_ID, Blood_Organization_Name, Phone_Number, Blood_Bank_ID, blood_organization_address)
VALUES (324505, 'LA Blood Center ', 23453258, 123457, 'LA');

INSERT INTO blood_organization (Blood_Organization_ID, Blood_Organization_Name, Phone_Number, Blood_Bank_ID, blood_organization_address)
VALUES (315638, 'Hemacare', 23456388, 123456, 'LA');

INSERT INTO blood_organization (Blood_Organization_ID, Blood_Organization_Name, Phone_Number, Blood_Bank_ID, blood_organization_address)
VALUES (365667, 'OneBlood', 23432248, 123454, 'LA');

-- Blood Report
INSERT INTO Blood_report (Blood_Report_ID, Donated_date, Blood_Type, Blood_Quantity, Blood_Organization_ID, Donor_ID, Patient_ID)
VALUES (231, '2018-02-23', 'A', '2', '324505', '416789', 1);
INSERT INTO Blood_report (Blood_Report_ID, Donated_date, Blood_Type, Blood_Quantity, Blood_Organization_ID, Donor_ID, Patient_ID)
VALUES (892, '2018-02-24', 'A', '1', '315638', '436789', 2);
INSERT INTO Blood_report (Blood_Report_ID, Donated_date, Blood_Type, Blood_Quantity, Blood_Organization_ID, Donor_ID, Patient_ID)
VALUES (716, '2018-02-25', 'O', '1', '365667', '452589', 3);
INSERT INTO Blood_report (Blood_Report_ID, Donated_date, Blood_Type, Blood_Quantity, Blood_Organization_ID, Donor_ID, Patient_ID)
VALUES (982, '2018-02-26', 'B', '2', '356789', '456349', 4);
INSERT INTO Blood_report (Blood_Report_ID, Donated_date, Blood_Type, Blood_Quantity, Blood_Organization_ID, Donor_ID, Patient_ID)
VALUES (479, '2018-02-27', 'O', '11', '345678', '456789', 5);

-- Doner
INSERT INTO donor (Donor_ID, Donor_Name, Age, Email, Blood_Quantity, Blood_Type, Donor_Address)
VALUES (456789, 'Jessie', 34, 'Jessie@gmail.com', '10', 'O',  'NY');

INSERT INTO donor (Donor_ID, Donor_Name, Age, Email, Blood_Quantity, Blood_Type, Donor_Address)
VALUES (456349, 'Cardinal',  33, 'Cardinal@gmail.com', '1', 'B',  'AZ');

INSERT INTO donor (Donor_ID, Donor_Name, Age, Email, Blood_Quantity, Blood_Type, Donor_Address)
VALUES (452589, 'Wilman', 56, 'Wilman@gmail.com', '2', 'O',  'LA');

INSERT INTO donor (Donor_ID, Donor_Name, Age, Email, Blood_Quantity, Blood_Type, Donor_Address)
VALUES (436789, 'Tom B. Erichsen',  43, 'Tom@gmail.com', '3', 'A', 'LA');

INSERT INTO donor (Donor_ID, Donor_Name, Age, Email, Blood_Quantity, Blood_Type, Donor_Address)
VALUES (416789, 'Amy', 32, 'Amy@gmail.com', '5', 'A',  'LA');


-- Hospital
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Phone_Number, Hospital_Address)
VALUES (11, 'Spring Forest Hospital Center', '8715867', '8578 W. Valley Ave.
Henderson, NY 42420');
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Phone_Number, Hospital_Address)
VALUES (12, 'Hot Springs Medical Clinic', '8536453', '31 Golf Dr.
Glastonbury, AZ 06033');
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Phone_Number, Hospital_Address)
VALUES (13, 'Hopevale Hospital Center', '9628921', '7172 North York Court
Wilson, LA 27893');
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Phone_Number, Hospital_Address)
VALUES (14, 'Good Samaritan Hospital', '6426423', '65 Edgefield St.
Kent, LA 44240');
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Phone_Number, Hospital_Address)
VALUES (15, 'Diamond Grove Community Hospital', '7174347', '79 Anderson Ave.
Charlottesville, LA 22901');

-- Patient
INSERT INTO Patient (Patient_ID, Patient_Name, Blood_Type, Age, Email, Phone_Number, Blood_Report_ID, Patient_Address)
VALUES (1, 'Mark Moe', 'A', '32', 'markmoe@gmail.com', '3125613', 231,  '722 Grove Court Lindenhurst, NY 11757');

INSERT INTO Patient (Patient_ID, Patient_Name, Blood_Type, Age, Email, Phone_Number, Blood_Report_ID, Patient_Address)
VALUES (2, 'Degage Ministries', 'A', '42', 'degageministries@gmail.com', '1587613', 892, '4 Highland St. Middle River, AZ 21220');

INSERT INTO Patient (Patient_ID, Patient_Name, Blood_Type, Age, Email, Phone_Number, Blood_Report_ID, Patient_Address)
VALUES (3, 'Robert Roe', 'O', '25', 'robertroe@gmail.com', '5381275',716, '725 Old York St. Nazareth, LA 18064');

INSERT INTO Patient (Patient_ID, Patient_Name, Blood_Type, Age, Email, Phone_Number, Blood_Report_ID, Patient_Address)
VALUES (4, 'Jane Poe', 'B', '54', 'janepoe@gmail.com', '8546832', 982, '9355 Durham Ave. Romeoville, LA 60446');

INSERT INTO Patient (Patient_ID, Patient_Name, Blood_Type, Age, Email, Phone_Number, Blood_Report_ID, Patient_Address)
VALUES (5, 'Larry Loe', 'O', '30', 'larryloe@gmail.com', '5134261', 479,  '95 E. James Court Boston, LA 02127');
