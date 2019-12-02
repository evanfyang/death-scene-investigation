<?php
/*
Author: Eura Shin
Date: 12/01/2019
*/

error_reporting(E_ALL);
ini_set('display_errors', 1);

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
$email=$_POST['email'];

// Make query
// Version with -1 means form is finalized
$sql = "SELECT CaseNum, County, Date_Created, Version FROM `DeathSceneInvestigation` WHERE `Email` = '". $email ."' AND `Version` >=  0";
if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Show resulting fields
if(mysqli_num_rows($result) > 0) {
    $data = array();

    //read the rows of result
    while($row = mysqli_fetch_assoc($result)) {
         $data[] = $row;
    }

    header('Content-type: application/json');
    print json_encode($data);
}
else {
    echo "Error: No results";
}

$conn->close();
?>
