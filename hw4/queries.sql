
/*
Query 1:
Join individual with admin table on individual id and find the individual names where admin role is funding management.
*/

select ind_name
from Individual i 
inner join Admin a
on i.ind_id = a.ind_id
where admin_role = ‘Funding Management’



/*
Query 2:
a)What are the names of individuals and how many clubs are they in?
b) who is subscribed to the most clubs (descending order)?
*/

/*From individual table, group individuals by name and count how many clubs they are in. Then order these counts 
*/

SELECT ind_name,COUNT(*) as total_ind_clubs 
FROM Individual i
GROUP BY ind_name 
ORDER BY total_ind_clubs;

/*
Query 3:
What are the names and emails of the individuals whose ind_Email end with '@jacobs-university.de'
*/
--Select individual name and email from the individual table where 
--ind_email ends with '@jacobs-university.de'
SELECT ind_Name, ind_Email
FROM Individual i 
WHERE ind_Email LIKE ‘%@jacobs-university.de’;

/*
Query 4:
How can I retrieve names of individuals present in club1 but not in club2
*/
--select individual name from individuals where his/her club_id is 2
-- now from the individuals not in club 2 select individuals from club 1

SELECT ind_Name 
FROM Individuals
WHERE club_id=1 AND ind_Name not in (select ind_Name
FROM Individuals 
WHERE club_id=2);

/*
Query 5:
 What are the names of individuals who are in more than 1 club.
 */

SELECT ind_name
FROM Individual i2
JOIN 
  (SELECT ind_id , COUNT(ind_id) as countsub 
  FROM is_part_of i
  GROUP BY ind_id
  HAVING count(ind_id)>1)S
ON i2.ind_id = S.ind_id;

/*
COUNT->AGGREGATE. if YOU PUT CONDITION on aggregate you need having 
*/


/*
Query 6:
How to know which locations have highest to lowest max_capacity in location in descending order.
*/
--select location name and its max capacity from the location table and order this capacity by descending order.
	SELECT location_place, max_capacity
	FROM location
	ORDER BY max_capacity DESC;

--Query 7: 
SELECT COUNT(club_id) 
FROM Club; 
/* Here using count to know the number of records available in the Table club or calculating the number of clubs. */ 


--Query 8: 
SELECT equi_name, usage_fee
FROM Equipment 
WHERE usage_fee >= 20;
/*Here we are choosing the equip_Name from Equipment where the usage_fee 
is greater or equal to 20 */ 

--Query 9: 
SELECT location_place 
FROM location 
WHERE on_campus = 1 AND max_capacity > 25;  
/* choosing the location_place where the on_campus is True and capacity is greater than 25 
so that an important seminar can be held where students are invited */ 

--Query 10: select club_id, equi_id and datedifference(EndTime-StartTime) from uses table.
SELECT club_id, equi_id, DATEDIFF(day, StartTime, EndTime) As datediff
FROM uses;
--you will see that club 2 uses the camera for a period of 30 days since the first argument in DATEDIFF is day

--Query 11:
--delete all individuals who are of type admin 
DELETE FROM Individual where ind_type=2;

--Query 12:
--delete all individuals who are of type alumni
DELETE FROM Individual where ind_type=1;

