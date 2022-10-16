<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name'];
     $email = $_POST['email'];
     $mobile = $_POST['mobile']; 
     $id = mt_rand();
     $sql = "INSERT INTO Individual(ind_name,ind_email,mobile_no,ind_id,active_passive,ind_type) 
     VALUES ('$name','$email','$mobile','$id','0','2')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
