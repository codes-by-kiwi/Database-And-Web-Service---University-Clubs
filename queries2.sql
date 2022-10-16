/*Query 1 */
SELECT Address
FROM Location
WHERE Capacity > 25 ;



/*Query 2 */
SELECT Name
FROM Sponsor s
WHERE Name LIKE '_r%';



/* Query 3: How to know which locations have highest to lowest capacity in location in descending order.
*/
/*select location name and its capacity from the location table and order this capacity by descending order. */
SELECT Address, capacity
FROM Location
ORDER BY Capacity DESC;



SELECT Name,Type
From Club;