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
$sql = "INSERT INTO secondTest (Narrative_Comments) VALUES ('test1')";

if ($conn->query($sql) === TRUE) {
    echo "Insert Successful";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 