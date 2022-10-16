<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name'];  
     $price = $_POST['price'];
     $id = mt_rand(20,200); 
     $camp = 1; 
     $cap = mt_rand(20,50);
     $sql = "INSERT INTO Merch(Merch_id,Merch_name,Merch_price)
     VALUES ('$id','$name','$price')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
