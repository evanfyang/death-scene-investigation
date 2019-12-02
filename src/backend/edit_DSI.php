<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
/*
 * Edits death scene investigation section in database from form 
 */

// Death Scene Investigation
$CaseNum = $_POST['CaseNum'];
$Version = $_POST['Version'];
$Coroner_Deputy = $_POST['Coroner_Deputy'];
$County = $_POST['County'];
$Date_of_Call = $_POST['Date_of_Call'];
$Time_of_Call = $_POST['Time_of_Call'];
$Person_Calling = $_POST['Person_Calling'];
$Police_Agency = $_POST['Police_Agency'];
$Time_of_Arrival = $_POST['Time_of_Arrival'];
$Suspected = $_POST['Suspected'];


// for local testing
//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "deathrecapp";

// for database on server
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

$sql = "INSERT INTO DeathSceneInvestigation(`CaseNum`, `Version`, `Coroner_Deputy`, `County`, `Date_of_Call`, `Time_of_Call`, `Person_Calling`, `Police_Agency`, `Time_of_Arrival`, `Suspected`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('ssssssssss', 
		$CaseNum,
		$Version,
		$Coroner_Deputy,
		$County,
		$Date_of_Call,
		$Time_of_Call,
		$Person_Calling,
		$Police_Agency,
		$Time_of_Arrival,
		$Suspected); 
		
if($stmt->execute()) {
    echo "success";
}
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$stmt->close();

?>
