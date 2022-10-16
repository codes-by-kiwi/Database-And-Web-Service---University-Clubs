/*DROP TABLE IF EXISTS EOrganisedBy, Club, Equipments, Merch, Individual, Sponsor, Location, Meeting, Event1, Is_member, Funds ;*/
DROP TABLE IF EXISTS Funds, Is_member,MIsHeldAt, Event1,Location, Sponsor, Individual,Club, Equipments, Merch, Meeting, EIsHeldAt, EOrganisedBy;



CREATE TABLE Club(
Club_id INTEGER NOT null AUTO_INCREMENT,
Name VARCHAR(40),
Leader VARCHAR(40),
Coleader VARCHAR(40),
Facebook VARCHAR(40),
Instagram VARCHAR(40),
Whatsapp VARCHAR(40),
Type VARCHAR(40),
CONSTRAINT Club_pk PRIMARY KEY(Club_id)
);



CREATE TABLE Equipments(
Equipment_id integer NOT NULL AUTO_INCREMENT,
Club_id INTEGER,
Name VARCHAR(40),
Quantity INTEGER,
Price INTEGER,
Weight INTEGER,
CONSTRAINT Equipments_pk PRIMARY KEY(Equipment_id),
CONSTRAINT fk_Equipments_Club foreign key (Club_id) REFERENCES Club (Club_id)
);



CREATE TABLE Merch(
Merch_id INTEGER NOT null AUTO_INCREMENT,
Club_id INTEGER,
Name VARCHAR(40),
Type VARCHAR(40),
Price INTEGER,
CONSTRAINT Merch_pk PRIMARY KEY(Merch_id),
CONSTRAINT fk_Merch_Club foreign key (Club_id) REFERENCES Club (Club_id));

CREATE TABLE Individual(
Individual_id INTEGER NOT null AUTO_INCREMENT,
First_Name VARCHAR(40),
Last_Name VARCHAR(40),
DOB date,
Email VARCHAR(40),
Mobile_no VARCHAR(40),
Occupation VARCHAR(40),
Major VARCHAR(40),
Graduation_year INTEGER,
CONSTRAINT Individual_pk PRIMARY KEY(Individual_id));

CREATE TABLE Sponsor(
Sponsor_id INTEGER NOT null AUTO_INCREMENT,
Name VARCHAR(40),
Type VARCHAR(40),
CONSTRAINT Sponsor_pk PRIMARY KEY(Sponsor_id));

CREATE TABLE Location(
Location_id INTEGER NOT null AUTO_INCREMENT,
Address VARCHAR(40),
On_campus VARCHAR(10),
Capacity INTEGER,
CONSTRAINT Location_pk PRIMARY KEY(Location_id));

CREATE TABLE Meeting(
Meeting_id INTEGER NOT NULL AUTO_INCREMENT,
Topic VARCHAR(40),
Club_id INTEGER,
date1 integer,
time1 integer,
Duration integer,
Agenda Varchar(40),
CONSTRAINT Meeting_pk PRIMARY KEY(Meeting_id),
CONSTRAINT fk_Meeting_Club foreign key (Club_id) REFERENCES Club (Club_id)
);



CREATE TABLE Event1(
Event1_id INTEGER NOT NULL AUTO_INCREMENT,
Topic VARCHAR(45),
EDate DATE,
ETime TIME,
Price INTEGER,
Duration TIME,
PRIMARY KEY(Event1_id)
);



CREATE TABLE Is_member(
Authority varchar(40),
Individual_id INTEGER NOT NULL,
Club_id INTEGER NOT NULL,
CONSTRAINT Is_member_pk PRIMARY KEY(Individual_id,Club_id),
CONSTRAINT fk_Is_member_Individual FOREIGN KEY (Individual_id) REFERENCES Individual (Individual_id),
CONSTRAINT fk_Is_member_Club FOREIGN KEY (Club_id) REFERENCES Club (Club_id)
);



CREATE TABLE Funds(
Amount INTEGER,
Sponsor_id INTEGER NOT NULL,
Event1_id INTEGER NOT NULL,
CONSTRAINT Funds_pk primary key(Sponsor_id,Event1_id),
CONSTRAINT fk_Funds_Event1 Foreign key (Event1_id) References Event1(Event1_id),
CONSTRAINT fk_Funds_Sponsor FOREIGN KEY (Sponsor_id) REFERENCES Sponsor (Sponsor_id)
);



CREATE TABLE EOrganisedBy(
Event1_id INTEGER not NULL,
Club_id INTEGER not NULL,
CONSTRAINT EOrganisedBy_pk PRIMARY KEY(Event1_id,Club_id),
CONSTRAINT fk_EOrganisedBy_Event1 FOREIGN KEY (Event1_id) REFERENCES Event1 (Event1_id),
CONSTRAINT fk_EOragnisedBy_Club FOREIGN KEY (Club_id) REFERENCES Club(Club_id)
);



CREATE TABLE EIsHeldAt(
From1 VARCHAR(20),
To1 VARCHAR(20),
Location_id INTEGER NOT NULL,
Event1_id INTEGER NOT NULL,
CONSTRAINT EIsHeldAt_pk primary key(Location_id,Event1_id),
CONSTRAINT fk_EIsHeldAt_Location FOREIGN KEY (Location_id) REFERENCES Location (Location_id),
CONSTRAINT fk_EIsHeldAt_Event1 Foreign key (Event1_id) References Event1(Event1_id)
);



CREATE TABLE MIsHeldAt(
Location_id INTEGER NOT NULL,
Meeting_id INTEGER NOT NULL,
CONSTRAINT MIsHeldAt_pk primary key(Location_id,Meeting_id),
CONSTRAINT fk_MIsHeldAt_Location FOREIGN KEY (Location_id) REFERENCES Location (Location_id),
CONSTRAINT fk_MIsHeldAt_Meeting Foreign key (Meeting_id) References Meeting(Meeting_id)
);