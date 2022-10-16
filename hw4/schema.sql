DROP TABLE IF EXISTS Individual;
DROP TABLE IF EXISTS Club;
Drop table if EXISTS Equipment;
Drop table if EXISTS location;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS uses;
DROP TABLE IF EXISTS Admin;
DROP TABLE IF EXISTS Event1;
DROP TABLE IF EXISTS is_hosted_by;
DROP TABLE IF EXISTS subscription;
DROP TABLE IF EXISTS is_held_at;
DROP TABLE IF EXISTS has;
DROP TABLE IF EXISTS is_part_of;
DROP TABLE IF EXISTS controls;
DROP TABLE IF EXISTS alumni;
DROP TABLE IF EXISTS used_to_be_part_of;
DROP TABLE IF EXISTS Merch;
DROP TABLE IF EXISTS is_notified_by;

CREATE TABLE Equipment(
equi_name VARCHAR(20),
usage_fee INTEGER,
equi_id INTEGER,
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
on_campus TINYINT CHECK (on_campus BETWEEN 0 AND 1),
max_capacity INTEGER,
location_place CHAR(30),
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
PRIMARY KEY(club_id)
);

CREATE TABLE Individual (
mobile_no VARCHAR(20),
ind_Email VARCHAR(50),
ind_Name VARCHAR(20),
ind_id INTEGER,
active_passive INTEGER,
ind_type INTEGER,
  PRIMARY KEY(ind_id)
);

CREATE TABLE alumni
(
ind_id INTEGER,
alumni_id INTEGER,
alumni_name VARCHAR(20),
donation INTEGER,
siblings VARCHAR(50),
awards VARCHAR(30),
PRIMARY KEY(alumni_id),
FOREIGN KEY(ind_id) REFERENCES Individual(ind_id) ON DELETE CASCADE ON UPDATE CASCADE
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
 FOREIGN KEY(ind_id) REFERENCES Individual(ind_id) ON DELETE CASCADE ON UPDATE CASCADE
);
--the admin is an individual

CREATE TABLE Event1
(
location_id INTEGER,
event_id INTEGER,
topic_type CHAR(20),
meeting_topic VARCHAR(20),
PRIMARY KEY(event_id),
  FOREIGN KEY(location_id) REFERENCES location(location_id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Competition
(
event_id INTEGER,
c_app VARCHAR(40),
c_id INTEGER,
PRIMARY KEY(c_id),
FOREIGN KEY(event_id) REFERENCES Event1(event_id) ON DELETE CASCADE ON UPDATE CASCADE
);
-- a competiton can be an event

CREATE TABLE Merch
(
Merch_id INTEGER,
Merch_name VARCHAR(50),
Merch_price INTEGER,
PRIMARY KEY(merch_id)
);

CREATE TABLE is_held_at
(
location_id INTEGER,
event_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(event_id,location_id),
FOREIGN KEY(event_id) REFERENCES Event1(event_id),
FOREIGN KEY(location_id) REFERENCES location(location_id)
);

CREATE TABLE has
(
location_id INTEGER,
c_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(c_id,location_id),
FOREIGN KEY(c_id) REFERENCES Competition(c_id),
FOREIGN KEY(location_id) REFERENCES location(location_id)
);

CREATE TABLE is_hosted_by
(
club_id INTEGER,
event_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,event_id),
FOREIGN KEY(club_id) REFERENCES Club(club_id),
FOREIGN KEY(event_id) REFERENCES Event1(event_id)
);

CREATE TABLE uses
(
club_id INTEGER,
equi_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,equi_id),
FOREIGN KEY(club_id) REFERENCES Club(club_id),
FOREIGN KEY(equi_id) REFERENCES Equipment(equi_id)
);

-- r/p b/w club and ind
CREATE TABLE is_part_of
(
club_id INTEGER,
ind_id INTEGER,
EnterTime DATETIME NOT NULL,
LeaveTime DATETIME NOT NULL,
PRIMARY KEY(club_id,ind_id),
FOREIGN KEY(club_id) REFERENCES Club(club_id),
FOREIGN KEY(ind_id) REFERENCES Individual(ind_id)
);

--relationship between admin and club
CREATE TABLE controls
(
club_id INTEGER,
admin_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id,admin_id),
FOREIGN KEY(club_id) REFERENCES Club(club_id),
FOREIGN KEY(admin_id) REFERENCES Admin(admin_id)
);

--relationship between subscription and individual
CREATE TABLE is_notified_by
(
ind_id INTEGER,
subs_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(subs_id,ind_id),
FOREIGN KEY(ind_id) REFERENCES Individual(ind_id),
FOREIGN KEY(subs_id) REFERENCES subscription(subs_id)
);

--relationship between alumni and club
CREATE TABLE used_to_be_part_of(
club_id INTEGER,
alumni_id INTEGER,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
PRIMARY KEY(club_id, alumni_id),
FOREIGN KEY(club_id) REFERENCES Club(club_id),
FOREIGN KEY(alumni_id) REFERENCES alumni(alumni_id)
);