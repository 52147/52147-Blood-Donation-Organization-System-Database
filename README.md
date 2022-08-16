# Blood-Donation-Organization-System-Database
Contributed by Tianzhu Li, Kai Sun, ShouTzu Han, present on August 10, 2022.


## Project Overview
The project topic we are picking is a blood donation management system. 
It is designed to create a database that links the blood bank to patients who need a blood transfusion.


## Project Description
In reality, the blood bank is not part of the hospital system, thus whenever a patient needs a blood transfusion, a database that contains related information is playing an important role in linking all roles there. 
If time allows, the system will have a front end that allows administrators from all blood organizations to add the information of donors, hospitals, and other blood organizations. When the detailed information is updated to the system, administrators can access the system and find blood available in the particular location for the hospital’s patients.

## Detailed Description
Administrators from all Blood organizations and hospitals can log in to the system with their usernames and password to find nearby blood organizations for patient.
After login, Administrators can add the information about the donor (name, phone number, address, blood type, blood quantity), patient (their name, phone, address, blood type, and medical report), other blood organization (name, phone number, location, and address), hospital (name, phone number, and address). In addition, Administrators can directly ask the donor to donate blood in an emergency. Also, Administrators can find the nearest location and quickly get the blood for the patient.
Hospitals can add patients(name, phone, address, blood type, and medical report) in the system and find the blood organization for the patient.

After blood donors donate blood, the blood will be sent to the hospital to check for infection, and the hospital will update the blood report in the system.
The system will determine the priority of the patient and provide the nearby location with the fastest expiration date blood base on the blood report.
After issuing the blood to the patient the blood report will update with patient name, date of use and add it to the customer profile.
The blood report has the donated date, expired date, blood type, usability(no infection), quantity, location, organization, hospital name, donor information, and patient information. 



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

##  Entity Relationship (ER) Diagram
![image](https://user-images.githubusercontent.com/79159894/184998022-679e9f1a-183c-4299-b209-9fb7dea92b8c.png)


## Logical Design
![image](https://user-images.githubusercontent.com/79159894/184998092-0f955094-c6f0-4de6-a27f-d7e48c63acf3.png)

		
