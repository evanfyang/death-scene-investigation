<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
/*
 * Retrieves the form elements for the specified part of the form
 */

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
$field=$_POST['field'];
$casenum=$_POST['casenum'];

// Make query
$sql = "SELECT MAX(Version) AS Version FROM `". $field ."` AS Version WHERE `CaseNum` = ". $casenum;
if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Show resulting fields
if(mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
         echo $row['Version'];
    }
}
else {
    echo "Error: No results";
}

$conn->close();
?>
