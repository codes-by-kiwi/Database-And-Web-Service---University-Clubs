<?php
include_once 'test.php';
if(isset($_POST['submit']))
{    
     $name = $_POST['name']; 
     $t_name = $_POST['tname']; 
     $m_name = $_POST['mname']; 
     $id = mt_rand(20,200); 
     $sql = "INSERT INTO Event2(event_id,topic_type,meeting_topic)
     VALUES ('$id','$t_name','$m_name')";
     if (mysqli_query($conn, $sql)) {
        echo "New record has been added successfully !";
     } else {
        echo "Error SUyash: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
