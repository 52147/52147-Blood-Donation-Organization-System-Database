# Blood-Donation-Organization-System-Database
![image](https://user-images.githubusercontent.com/79159894/184999868-39e56866-ff02-4d6f-83ed-0f0270d299ab.png)

Contributed by Tianzhu Li, Kai Sun, ShouTzu Han, presented on August 10, 2022.


## Project Overview
The project topic we are picking is a blood donation management system. 
It is designed to create a database that links the blood bank to patients who need a blood transfusion.


## Project Description
- In reality, the blood bank is not part of the hospital system, thus whenever a patient needs a blood transfusion, a database that contains related information is playing an important role in linking all roles there. 
- If time allows, the system will have a front end that allows administrators from all blood organizations to add the information of donors, hospitals, and other blood organizations. When the detailed information is updated to the system, administrators can access the system and find blood available in the particular location for the hospital’s patients.

## Detailed Description
- Administrators from all Blood organizations and hospitals can log in to the system with their usernames and password to find nearby blood organizations for patient.
- After login, Administrators can add the information about the donor (name, phone number, address, blood type, blood quantity), patient (their name, phone, address, blood type, and medical report), other blood organization (name, phone number, location, and address), hospital (name, phone number, and address). 
- In addition, Administrators can directly ask the donor to donate blood in an emergency. Also, Administrators can find the nearest location and quickly get the blood for the patient.
- Hospitals can add patients(name, phone, address, blood type, and medical report) in the system and find the blood organization for the patient.

- After blood donors donate blood, the blood will be sent to the hospital to check for infection, and the hospital will update the blood report in the system.
- The system will determine the priority of the patient and provide the nearby location with the fastest expiration date blood base on the blood report.
- After issuing the blood to the patient the blood report will update with patient name, date of use and add it to the customer profile.
- The blood report has the donated date, expired date, blood type, usability(no infection), quantity, location, organization, hospital name, donor information, and patient information. 

##  Entity Relationship (ER) Diagram
![image](https://user-images.githubusercontent.com/79159894/184998022-679e9f1a-183c-4299-b209-9fb7dea92b8c.png)


## Logical Design
![image](https://user-images.githubusercontent.com/79159894/184998092-0f955094-c6f0-4de6-a27f-d7e48c63acf3.png)

## Database Schema
```
CREATE TABLE Blood_Bank
	(Blood_Bank_ID	INT	NOT NULL,
	Donor_Name	VARCHAR	(255),
	Blood_Organization_Name VARCHAR	(255),
	Donor_ID	 INT,
	Blood_Quantity	INT,
    Blood_Type VARCHAR	(255),
    Blood_Bank_Address VARCHAR	(255),
CONSTRAINT Blood_Bank_PK PRIMARY KEY (Blood_Bank_ID));

CREATE TABLE Blood_Organization
	(Blood_Organization_ID	INT	NOT NULL,
	Blood_Organization_Name	VARCHAR	(255),
	Phone_Number INT,
	Blood_Organization_Address	 VARCHAR(255),
	Blood_Bank_ID	INT,
CONSTRAINT fk0 foreign key (Blood_Bank_ID) references Blood_Bank(Blood_Bank_ID),
CONSTRAINT Blood_Organization_PK PRIMARY KEY (Blood_Organization_ID));


CREATE TABLE Donor
	(Donor_ID	INT	NOT NULL,
	Donor_Name	VARCHAR	(255),
	Age INT,
	Email	VARCHAR(255),
	Blood_Quantity	INT,
    Blood_Type VARCHAR	(255),
    Blood_Organization_ID INT, 
    Donor_Address varchar(255),
CONSTRAINT fk1 foreign key (Blood_Organization_ID) references Blood_Organization(Blood_Organization_ID),
CONSTRAINT Donor_PK PRIMARY KEY (Donor_ID));


CREATE TABLE Hospital
	(Hospital_ID	INT	NOT NULL,
	Hospital_Name	VARCHAR	(255),
	Phone_Number INT,
	Hospital_Address	  VARCHAR(255),
    Blood_Organization_ID INT,
CONSTRAINT fk2 foreign key (Blood_Organization_ID) references Blood_Organization(Blood_Organization_ID),
CONSTRAINT Hospital_PK PRIMARY KEY (Hospital_ID));



CREATE TABLE Patient
	(Patient_ID	INT	NOT NULL,
	Patient_Name	VARCHAR	(255),
	Blood_Type VARCHAR	(255),
	Age	 INT,
	Email	VARCHAR	(255),
	Phone_Number INT,
	Patient_Address	  VARCHAR(255), 
    Blood_Report_ID INT,
    Hospital_ID INT,    
CONSTRAINT fk3 foreign key (Hospital_ID) references Hospital(Hospital_ID),
CONSTRAINT Patient__PK PRIMARY KEY (Patient_ID));



CREATE TABLE Blood_Report
	(Blood_Report_ID INT	NOT NULL,
	Donated_Date DATETIME,
	Blood_Type VARCHAR	(255),
	Blood_Quantity	INT,
	Blood_Organization_ID INT,
	Donor_ID  INT,
	Patient_ID	INT,
    Hospital_ID INT,
CONSTRAINT fk4 foreign key (Hospital_ID) references Hospital(Hospital_ID),
CONSTRAINT Blood_Report__PK PRIMARY KEY (Blood_Report_ID));
```



## Data
```
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

```

## Query
```
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
```


## Conclusion
### What our learned

- We learned how to design a database from start to finish, such as creating an erd, logical design, and physical design.
- What I found out interesting is that we can create entities relationships by analyzing requirements from the real blood donation system.
- And the most challenging part is drawing the relationship table for logical design because we need to consider if there is an association between 2 entities in a many-to-many relationship, then we need to create the new table to represent this relationship.
### What you would do differently if you could start over

- If we can start over, we will add a blood testing organization to provide a screening of blood donors, because not every blood donor is eligible to donate blood.
- Some blood donors may have diseases, so their blood is also not healthy. This is not considered in our project. If we can start over, we will add a blood testing organization between the blood organization and the donor.

### Changes to the project along the way

- We initially wanted to design a platform in which hospitals could communicate with blood donation agencies about the blood type they needed, and patients could communicate with hospitals here. 
- But we found it inconvenient for us to explain some of the relationships, such as the relationship between blood bank and blood organization. 
- So we decided to cancel the design of the platform, and instead let the two roles that have a relationship with each other be connected individually.





