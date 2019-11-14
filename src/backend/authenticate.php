<?php
//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "deathrecapp";

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

// Get relevant fields
$user=$_POST['email'];
$pass=$_POST['password'];

// Check to make sure the username actually exists
$sql = "SELECT Password FROM Investigator WHERE Email='" .$user ."'";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);

if ($count == 1) {
    // Check to make sure the password and username match
    $row = mysqli_fetch_row($result);
    if($row[0] == $pass) {
        echo "success!";
    }
    else { // Password does not match
        echo "Incorrect password";
    }

}
else 
{
	// Invalid
	echo"No username under ". $user. " found";
}

$conn->close();
?>
