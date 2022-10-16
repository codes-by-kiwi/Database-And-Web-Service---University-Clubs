<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: Login.php");
    exit;
}
?>
<!DOCTYPE>
<html>
    <head> 
    </head> 
    <Body>  
        <ul>
        <li><a href="equip.html">Equipment</a></li> 
        <li><a href="club.html">club</a></li> 
        <li><a href="location.html">location</a></li> 
        <li><a href="alu.html">Alumni</a></li> 
	<li><a href="merch.html">Merch</a></li> 
 	<li><a href="admin.html">Admin</a></li> 
	<li><a href="sub.html">Subscription</a></li> 
        <li><a href="event.html">Events</a></li> 
        </ul> 
	<button><a href="Logout.php">Logout</button>
    </Body>
</html>
