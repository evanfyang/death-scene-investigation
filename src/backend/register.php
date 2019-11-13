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

// Retrieve the relevant fields
$user=$_POST['email'];
$county=$_POST['county'];
$type=$_POST['type'];
$pass=$_POST['password'];
$first_name=$_POST['firstname'];
$last_name=$_POST['lastname'];

// Make sure the username is available
$sql = "SELECT * FROM `Investigator` WHERE `Email`='". $user ."'";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);

if ($count == 0) { // There is no matching username 
    $sql = "INSERT INTO Investigator(`Email`, `County` ,  `User_Type`, `Password`, `First_Name`, `Last_Name`) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssssss', $user, $county, $type,  $pass, $first_name, $last_name);
    
    if($stmt->execute()) {
        echo "User created successfully!";
    }
    else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $stmt->close();
    

}
else // Username already in database 
{
	// Invalid
	echo"Error! This username is taken.";
}

$conn->close();


?>
