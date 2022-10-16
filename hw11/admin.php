<?php
include_once 'test.php';
if(isset($_POST['submit']))
{     
     $id = mt_rand(20,200); 
     $role = $_POST['Role']; 
     $access = $_POST['acesss'];  
     $access2 = 'j';
     $budget = 0;
     $sql = "INSERT INTO Admin1(admin_id,admin_Role,access_typeE,budget,access_typeCI)
     VALUES ('$id','$role','$access','$budget','$access2')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>

