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
$version=$_POST['version'];

// Make query
$sql = "DELETE FROM " . $field . " WHERE `CaseNum` = " . $casenum . " AND `Version` = " . $version;
if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

echo "success"; 

$conn->close();
?>
