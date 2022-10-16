<?php
    echo "Helloworld1 \r\n";
?>

<?php 
include_once('test.php');  
echo "Helloworld";

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    echo "Connection not working!";
  }
else{
    echo "connection working! \n";
}

$sql="SELECT * from `Location`  ";

echo "reached to sql query". "<br>";

$result = $conn->query($sql);
echo "power";
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " .  $row["Address"]. " - Name: " . $row["Capacity"]. " Fee " . $row["usage_fee"]. "<br>"; 

  } 
} else {
  echo "0 results";
}
$conn->close();
