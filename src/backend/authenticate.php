<?php
$servername = "statsqltest.as.uky.edu";
$username = "deathrecadmin";
$password = "^YGUG6tqpzpqE6G";
$dbname = "deathrecapp";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//$user=$_POST['admin'];
//$pass=$_POST['password'];

$user="admin";
$pass="password";
echo $user;
echo $pass;

$sql = "SELECT * FROM login WHERE user='$user' and password='$pass'";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);


if ($count == 1) {
	//Valid
	echo"valid";
}

else 
{
	// Invalid
	echo"invalid";
}

$conn->close();


?>