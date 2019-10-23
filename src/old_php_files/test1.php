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
$sql = "CREATE TABLE firstTest (
Narrative_Comments VARCHAR(30),
CaseNum VARCHAR(30) NOT NULL
)";

if ($conn->query($sql) === TRUE) {
    echo "Table firstTest created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?> 