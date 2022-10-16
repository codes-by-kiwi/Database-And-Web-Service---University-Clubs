<h1> html working </h1>

<?php

echo "file opening";
include_once ('test.php');

die "started";

if(isset($_POST['submit']))
{    
    $searchValue = $_POST['search']; 
    $cap = $_POST['cap']; 
  
  $sql = "SELECT * FROM `Location`";	
  $result= $conn->query($sql);

if ($result->num_rows > 0) {
  while ($row = $result ->fetch_assoc()) {
    echo $row['Address'];
  } 
else{ 
echo"No val";
} 
}

?>

