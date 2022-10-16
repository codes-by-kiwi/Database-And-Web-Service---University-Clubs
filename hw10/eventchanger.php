<?php

include_once('test.php');  
// echo "Helloworld";

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    echo "Connection not working!";
  }


// echo $_GET['id'];
// echo $_GET['table'];

$table = $_GET['table'];
$id = $_GET['id'];

$sql="SELECT * FROM Event1  WHERE  Topic like '$id%' ";

// echo "reached to sql query". "<br>";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "Topic: " . $row["Topic"]. " - Date: " . $row["EDate"]. " - Time: " .$row["ETime"]. "<br>"; 
    // echo "<p> Hello </p>";
    // $name = $row["equi_name"];
    // $id = $row["equi_id"];
    // echo "<a href='secondpage.php?id=$id&table=Equipment'> $name </a>". "<br>";
    
    // echo "   <a href=\\"http://www.website.com\\">Click here to visit site</a>";

  }
} else {
  echo "0 results";
}
$conn->close();


?>
