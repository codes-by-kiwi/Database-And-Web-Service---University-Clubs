<!-- <html>
<body>

Welcome <?php echo $_POST["name"]; ?><br>
Your email address is: <?php echo $_POST["email"]; ?>

</body>
</html> -->


<?php
    echo "Helloworld11 \r\n";
    echo $_POST["name"];
?>

<?php 
include_once('../test.php');  

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    echo "Connection not working!";
  }

$search_thing = $_POST["name"];

$sql="SELECT * from `Equipment` where equi_name like '$search_thing%'";

$result = $conn->query($sql);


// if (!empty($result))
//   echo "a is bigger than b" . count($result);

// $trialdisplay = $result->fetch_assoc();

// while ($row = $result->fetch_assoc())
// {
//     print_r($row);
// }




if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    // echo "id: " . $row["equi_id"]. " - Name: " . $row["equi_name"]. "<br>"; 
    // echo "<p> Hello </p>";
    $name = $row["equi_name"];
    $id = $row["equi_id"];
    echo "<a href='secondpage.php?id=$id&table=Equipment'> $name </a>". "<br>";
    
    // echo "   <a href=\\"http://www.website.com\\">Click here to visit site</a>";

  }
} else {
  echo "0 results";
}
$conn->close();


// $res=mysql_query($sql) or die(mysql_error());

// echo "reached to printing";

// while($row=mysql_fetch_assoc($res))
//   echo $row['equi_name'] ;

// $sql="SELECT * FROM  club ORDER BY club_id LIMIT 1"

// $result = mysql_query($sql);
// while($row = mysql_fetch_array($result)) {
//     echo $row['fieldname']; 
// } 
?>