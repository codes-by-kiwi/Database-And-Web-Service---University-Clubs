<?php
    $servername='localhost';
    $username='group2read_only';
    $password='6QOIHm';
    $dbname = "group2";
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
      if(!$conn){
          die('Could not Connect MySql Server:' .mysql_error());
        }
?>
