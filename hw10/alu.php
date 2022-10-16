<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name']; 
     $donation = $_POST['don']; 
     $id = mt_rand(20,200);  
     $sib =  $_POST['sib']; 
     $awards = "lap";
     $cap = mt_rand(20,50);
     $sql = "INSERT INTO alumni1(alumni_name,alumni_id,donation,siblings,awards)
     VALUES ('$name','$id','$donation','$sib','$awards')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
