<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name']; 
     $id = mt_rand(20,200); 
     $camp = 1; 
     $cap = mt_rand(20,50);
     $sql = "INSERT INTO Location(Address,Location_id,Capacity,On_campus)
     VALUES ('$name',DEFAULT,'$cap','$camp')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
