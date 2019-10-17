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
// sql to create table
$loginsql = "CREATE TABLE login (
user VARCHAR(30),
password VARCHAR(30)
)";

if ($conn->query($loginsql) === TRUE) {
    echo "Table Login created successfully";
} else {
    echo "Error creating table login " . $conn->error;
}
?>