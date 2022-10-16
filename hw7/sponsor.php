<?php 
include_once('test.php'); 
if ($conn->connect_error) {
    echo "Connection not working!";
  }
else{
    echo "connection working! \n";
}
if(isset($_POST['submit']))
{ 
$name = $_POST['search']; 
echo "reached to sql query". "<br>";
$sql="SELECT * FROM Sponsor WHERE Name like '$name%' ";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    // echo "id: " . $row["equi_id"]. " - Name: " . $row["equi_name"]. "<br>"; 
    // echo "<p> Hello </p>";
    $name = $row["Name"];
    echo "<a href='sponchanger.php?id=$name&table=Equipment'> $name </a>". "<br>";
    
    // echo "   <a href=\\"http://www.website.com\\">Click here to visit site</a>";

  }
} else {
  echo "No values look for the correct data"; 
} 
}
$conn->close();
?> 
