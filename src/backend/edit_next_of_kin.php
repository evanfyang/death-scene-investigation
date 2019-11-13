<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits next of kin section in database from form 
 */

// Next of Kin
$CaseNum = $_POST['CaseNum'];
$Version = $_POST['Version'];
$Notified_by = $_POST['Notified_by'];
$Date_Notified = $_POST['Date_Notified'];
$Time_Notified = $_POST['Time_Notified'];
$Name = $_POST['Name'];
$Relationship = $_POST['Relationship'];
$Phone_Number = $_POST['Phone_Number'];
$Address = $_POST['Address'];
$City_1 = $_POST['City_1'];
$State = $_POST['State'];
$Zip_1 = $_POST['Zip_1'];

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

// inserts data from app into next of kin table
$sql = "INSERT INTO NextofKin (CaseNum, Version, Notified_by, Date_Notified, Time_Notified, Name, Relationship, Phone_Number, Adress, City_1, State, Zip_1) VALUES ('".$CaseNum."', '".$Version."','".$Notified_by."','".$Date_Notified."','".$Time_Notified."','".$Name."','".$Relationship."','".$Phone_Number."','".$Adress."','".$City_1."','".$State."','".$Zip_1."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
