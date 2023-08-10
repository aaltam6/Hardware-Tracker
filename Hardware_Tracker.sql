DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS hardware;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE employee(
employeeID varchar(50),
firstName varchar(50),
lastName varchar(50),
positionTitle varchar(50),
department varchar(50),
rentedDate varchar(50),
PRIMARY KEY(employeeID)
)
;

CREATE TABLE location(
locationID varchar(50),
officeTitle varchar(50),
city varchar(50),
state varchar(50),
officeType varchar(50),
employeeCount varchar(50),
PRIMARY KEY(locationID)
)
;

CREATE TABLE hardware(
hardwareID varchar(50),
itemType varchar(50),
machineName varchar(50),
activeStatus varchar(50),
cost int,
employeeID varchar(50),
locationID varchar(50),
PRIMARY KEY(hardwareID),
FOREIGN KEY (employeeID) REFERENCES employee(employeeID),
FOREIGN KEY (locationID) REFERENCES location(locationID)
)
;

INSERT INTO employee(employeeID,firstName,lastName,positionTitle,department)
VALUES('E001','Arturo','Altamirano','IT Intern','Network Team')
;

INSERT INTO hardware(hardwareID,itemType,machineName,activeStatus,cost,employeeID,locationID)
VALUES('H001','Laptop','Dell H1100','Active','500','E001','L001')
;

INSERT INTO location(locationID,officeTitle,city,state,officeType,employeeCount)
VALUES('L001','Corporate HeadQuarters','Baton Rouge','LA','Corporate Multi-Floor','200')
;
