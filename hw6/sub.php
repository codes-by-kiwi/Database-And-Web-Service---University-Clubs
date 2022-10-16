<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name']; 
     $target = $_POST['target']; 
     $id = mt_rand(20,200); 
     $camp = 1; 
     $cap = mt_rand(20,50);
     $sql = "INSERT INTO subscription(subs_id,target_course,target_people) 
     VALUES ('$id','$name','$target')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
