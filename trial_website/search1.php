
<?php


	$servername='localhost';
	$username='group2';
	$password='6QOIHm';
	$dbname = "group2";


	$conn= mysqli_connect($servername, $username, $password, $dbname);

if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

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