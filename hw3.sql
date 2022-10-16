DROP TABLE IF EXISTS Individual;
DROP TABLE IF EXISTS Club;
Drop table if EXISTS Equipment;
Drop table if EXISTS location;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS Admin;
DROP TABLE IF EXISTS Event;
DROP TABLE IF EXISTS is_hosted_by;
DROP TABLE IF EXISTS subscription;
DROP TABLE IF EXISTS is_held_at;
DROP TABLE IF EXISTS has;
DROP TABLE IF EXISTS has_access_to;
DROP TABLE IF EXISTS controls;
DROP TABLE IF EXISTS alumni;
DROP TABLE IF EXISTS used_to_be_a_part_of;

CREATE TABLE Equipment(
access_typeE CHAR(10),
equi_Name VARCHAR(20),
usage_fee INTEGER,
equi_id INTEGER,
merch_id INTEGER,
merch_Name CHAR(10),
merch_Price INTEGER,
PRIMARY KEY(equi_id));


CREATE TABLE subscription
(
subs_id INTEGER,
target_course CHAR(20),
target_people INTEGER,
 PRIMARY KEY(subs_id)
);

CREATE TABLE location
(
location_id INTEGER,
in_person TINYINT CHECK(in_person BETWEEN 0 AND 1),
on_campus TINYINT CHECK (on_campus BETWEEN 0 AND 1),
max_capacity INTEGER,
location_place CHAR(10),
PRIMARY KEY(location_id)
);

CREATE TABLE Club(
club_id INTEGER,
club_name VARCHAR(20),
club_desc CHAR(50),
week_meet_place VARCHAR(20),
week_meet_day TINYINT CHECK (week_meet_day BETWEEN 1 AND 7),
week_meet_time TIME,
safety_measures VARCHAR(50),
social_Media VARCHAR(50),
membership_fee INTEGER,
reg_form_link CHAR(20),
access_typeCI CHAR(10),
PRIMARY KEY(club_id)
);


CREATE TABLE Individual (
  
mobile_no VARCHAR(20),
club_id INTEGER,
ind_Email VARCHAR(20),
ind_Name VARCHAR(20),
ind_id INTEGER,
active_passive TINYINT CHECK(active_passive BETWEEN 0 AND 2),
ind_type INTEGER,
PRIMARY KEY(ind_id),
 FOREIGN KEY(club_id) REFERENCES CLUB ON DELETE SET NULL ON UPDATE CASCADE
);
--an individual can be a club by himself/herself


CREATE TABLE alumni
(
  ind_id INTEGER,
alumni_id INTEGER,
alumni_name VARCHAR(20),
donation INTEGER,
contribution VARCHAR(30),
siblings VARCHAR(20)
PRIMARY KEY(alumni_id),
FOREIGN KEY(ind_id) REFERENCES Individual ON DELETE CASCADE ON UPDATE CASCADE
);
--an alumni is an individual
--since an alumni has already graduated we assume that they have
--no access to club info and no access to club information


CREATE TABLE Admin
(
 ind_id INTEGER,
budget INTEGER,
admin_Role VARCHAR(20),
access_typeE CHAR(10),
access_typeCI CHAR(10),
admin_id INTEGER,
PRIMARY KEY(admin_id),
  FOREIGN KEY(ind_id) REFERENCES Individual ON DELETE CASCADE ON UPDATE CASCADE
);
--the admin is an individual

CREATE TABLE Event
(
location_id INTEGER,
location_place VARCHAR(20),
event_id INTEGER,
topic_type CHAR(20),
meeting_desc VARCHAR(20),
PRIMARY KEY(event_id)
);

CREATE TABLE Competition
(
event_id INTEGER,
c_app VARCHAR(20),
c_id INTEGER,
PRIMARY KEY(c_id),
 FOREIGN KEY(event_id) REFERENCES Event ON DELETE CASCADE ON UPDATE CASCADE
);
-- a competiton can be an event 

--relationship between location and event
CREATE TABLE is_held_at
(
location_id INTEGER,
event_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL
PRIMARY KEY(event_id,location_id),
FOREIGN KEY(event_id) REFERENCES Event,
FOREIGN KEY(location_id) REFERENCES location
);

--relationship between location and competition
CREATE TABLE has
(
location_id INTEGER,
c_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL
PRIMARY KEY(c_id,location_id),
FOREIGN KEY(c_id) REFERENCES Competition,
FOREIGN KEY(location_id) REFERENCES location
);

--relationship between club and event 
CREATE TABLE is_hosted_by
(
club_id INTEGER,
event_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,event_id),
FOREIGN KEY(club_id) REFERENCES Club,
FOREIGN KEY(event_id) REFERENCES Event
);

--relationship between equipment and club
CREATE TABLE uses
(
club_id INTEGER,
equi_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,equi_id),
FOREIGN KEY(club_id) REFERENCES Club,
FOREIGN KEY(equi_id) REFERENCES Equipment
);

--relationship between club and individual
CREATE TABLE has_access_to
(
club_id INTEGER,
ind_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,ind_id),
FOREIGN KEY(club_id) REFERENCES Club,
FOREIGN KEY(ind_id) REFERENCES Individual
);

--relationship between admin and club
CREATE TABLE controls
(
club_id INTEGER,
admin_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,admin_id),
FOREIGN KEY(club_id) REFERENCES Club,
FOREIGN KEY(admin_id) REFERENCES Admin
);

--relationship between subscription and individual
CREATE TABLE is_notified_by
(
ind_id INTEGER,
subs_id INTEGER,
StartTime DATETIME NOT NULL, 
EndTime DATETIME NOT NULL,
PRIMARY KEY(subs_id,ind_id),
FOREIGN KEY(ind_id) REFERENCES Individual,
FOREIGN KEY(subs_id) REFERENCES subscription
);

--relationship between alumni and club
CREATE TABLE used_to_be_part_of
(
club_id INTEGER,
alumni_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id, alumni_id),
FOREIGN KEY(club_id) REFERENCES Club,
FOREIGN KEY(alumni_id) REFERENCES alumni
);
