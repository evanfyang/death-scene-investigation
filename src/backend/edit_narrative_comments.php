<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits narrative comments section in database from form 
 */

// Narrative Comments
$Narrative_Comments=$_POST['Narrative_Comments'];

// for local testing
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "deathrecapp";

// for database on server
//$servername = "statsqltest.as.uky.edu";
//$username = "deathrecadmin";
//$password = "^YGUG6tqpzpqE6G";
//$dbname = "deathrecapp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// inserts data from app into narrative comments table
$sql = "INSERT INTO NarrativeComments (CaseNum, Narrative_Comments) VALUES ('".$CaseNum."','".$Narrative_Comments."')";
$result = mysqli_query($mysqli, $DIquery);
if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>