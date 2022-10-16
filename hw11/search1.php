
<?php

include_once ('test.php');

// echo "connection done finally";


$id = $_GET['q'];

echo "$id"."\n";


$sql = "SELECT Name FROM Club where Name like '%$id%' limit 10";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()){
		echo $row["Name"]."\n";
	}
} else {
	echo "0 results";
}
$conn->close();

?>