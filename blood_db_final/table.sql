

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


