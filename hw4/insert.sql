--(equi_name, usage_fee, equi_id) 
INSERT INTO Equipment VALUES ('Projector', 15, 1);
INSERT INTO Equipment VALUES ('35-45 mm camera lens', 20, 2);
INSERT INTO Equipment VALUES ('Graphic calculator', 10, 3);
INSERT INTO Equipment VALUES ('Tennis Racket', 15, 4);

--(subs_id, target_course, target_people)
INSERT INTO subscription VALUES (1, 'Physics',20);
INSERT INTO subscription VALUES (2, 'Computer Science',30);
INSERT INTO subscription VALUES (3, 'Mathematics',25);
INSERT INTO subscription VALUES (4, 'Psychology',40);

--(location_id,on_campus, max_capacity, location_place ) 
INSERT INTO location VALUES (1,1,50,'SCC Hall 1');
INSERT INTO location VALUES (2, 1, 25, 'Campus Green');
INSERT INTO location VALUES (3, 1, 25, 'Krupp Servery');
INSERT INTO location VALUES (4, 1, 25, 'Merc Servery');
INSERT INTO location VALUES (5, 1, 25, 'C3  Servery');

--(club_id, club_name, club_desc, week_meet_place, week_meet_day, 
--week_meet_time, safety_measures, social_Media, membership_fee, reg_form_link) 
INSERT INTO Club
VALUES (1, 'Rowing club', 'Racing boats using oars', 'Jacobs Gym', 
        2, '23:00:00', 'If fog, postpone meeting','https://chat.whatsapp.com/club15', 
20);

   
INSERT INTO Club 
VALUES(2, 'Photography club', 'Taking pictures', 'Campus Green',
       3, '22:00:00', 'give location specification', 'https://chat.whatsapp.com/club13',25);

INSERT INTO Club 
VALUES(3, 'Chess club', 'Strategic Board games', 'Krupp servery', 
       4, '10:00:00', NULL, 'https://chat.whatsapp.com/club12',30);

INSERT INTO Club 
VALUES(4, 'Football club', 'Taking pictures', 'Campus Green', 
       4, '22:00:00', 'wear chest protector', 'https://chat.whatsapp.com/club11',40);
 
--(mobile_no, ind_Email, ind_Name,ind_id, active_passive, ind_type)
INSERT INTO Individual VALUES ('112-350-671', 'm.roja@jacobs-university.de', 'Michelle Roja', 1, 0, 2); 
INSERT INTO Individual VALUES ('113-456-787','m.muhammad@jacobs-university.de', 'Mirza Muhammad', 2, 0, 2); 
INSERT INTO Individual VALUES ('119-345-346','f.sheikh@jacobs-university.de', 'Faaiza Sheikh', 3, 1, 1); 
INSERT INTO Individual VALUES ('118-3450-346', 'r.dean@jacobs-university.de', 'Riley Dean', 4, 1, 1); 
INSERT INTO Individual VALUES ('119-345-391','j.doe@jacobs-university.de', 'John Doe', 5, 1, 1); 
INSERT INTO Individual VALUES ('123-345-391','j.smith@jacobs-university.de', 'John Smith', 6, 1, 1);
INSERT INTO Individual VALUES ('123-345-391','l.singh@jacobs-university.de', 'Lara Singh', 7, 1, 1);
INSERT INTO Individual VALUES ('123-345-391','m.kaling@jacobs-university.de', 'Mindy Kaling', 8, 1, 1);
INSERT INTO Individual VALUES ('123-345-391','k.khan@jacobs-university.de', 'Kinza Khan', 9, 1, 1);

--ind_type of 0 means that he/she is a member of the group
--ind_type of 1 means he/she is admin
--ind_type of 2 means he/she is alumni

--(ind_id, alumni_id, alumni_name, donation, siblings) 
INSERT INTO alumni VALUES (1, 1, 'Michelle Roja', 300, 'Manuel Roja, Mishka Roja', 'trophy');
INSERT INTO alumni VALUES (2, 2, 'Ayesha Khan', 300, 'Mirha Khan, Marium Khan', 'silver medal');
INSERT INTO alumni VALUES (7, 3, 'Lara Singh', 300, 'Nisha Singh, Michelle Singh', 'gold medal');
INSERT INTO alumni VALUES (8, 4, 'Mindy Kaling', 300, 'Randy Kaling, Ronny Kaling', 'bronze medal');
INSERT INTO alumni VALUES (9, 5, 'Kinza Khan', 300, 'Bisma Khan, Michelle Khan', 'trophy');

--(ind_id, budget, admin_Role, access_typeE, access_typeCI, admin_id) 
INSERT INTO Admin VALUES (3, 200, 'Funding Management', 'f', 'f', 1);
INSERT INTO Admin VALUES (4, 300, 'Hiring Patrons', 'f', 'l', 2); 
INSERT INTO Admin VALUES (5, 400, 'Funding Management', 'f', 'l', 3); 
INSERT INTO Admin VALUES (6, 100, 'Funding Management', 'l', 'l', 4); 


--location_id, event_id, topic_type, meeting_topic
INSERT INTO Event VALUES (1,1,'Alumni Talk','Filming');
INSERT INTO Event VALUES (2,2,'Hackathon','Programming');
INSERT INTO Event VALUES (3,3,'Competition','Chess');
INSERT INTO Event VALUES (4,4,'Competition','Scrabble');
INSERT INTO Event VALUES (5,5,'Competition','Photography');
INSERT INTO Event VALUES (1,6,'Competition','Drawing');



--(event_id, c_app,c_id)
INSERT INTO Competition VALUES(3,'www.dotform.com/photo-comp-apply' ,1);
INSERT INTO Competition VALUES(4,'www.dotform.com/rowing-comp-apply' ,2);
INSERT INTO Competition VALUES(5,'www.dotform.com/football-comp-apply' ,3);
INSERT INTO Competition VALUES(6,'www.dotform.com/filming-comp-apply' ,4);

--(Merch_id, Merch_name, Merch_price)
INSERT INTO Merch VALUES(1,'Tshirt with football logo',20);
INSERT INTO Merch VALUES(2,'Tshirt with camera logo',20);
INSERT INTO Merch VALUES(3,'Tshirt with rowing oars',20);

INSERT INTO is_part_of VALUES (1, 1, '2000-09-25 21:00:00', '2012-09-25 19:00:00');
INSERT INTO is_part_of VALUES (2, 1, '2000-09-25 21:00:00', '2012-09-25 19:00:00');
INSERT INTO is_part_of VALUES (3, 2, '2000-09-25 21:00:00', '2012-09-25 19:00:00');
INSERT INTO is_part_of VALUES (4, 2, '2000-09-25 21:00:00', '2012-09-25 19:00:00');
INSERT INTO is_part_of VALUES (4, 8, '2000-09-25 21:00:00', '2012-09-25 19:00:00');

INSERT INTO uses VALUES (2,1, '2000-09-25 21:00:00', '2000-10-25 21:00:00');
INSERT INTO uses VALUES (2,2,'2000-09-25 21:00:00', '2000-10-25 21:00:00');

