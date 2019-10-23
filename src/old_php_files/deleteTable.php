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
$DSIsql = "DROP TABLE DeathSceneInvestigation";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE NextofKin";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE DecedentInformation";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE IncidentInformation";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE Investigation";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE CaseHistory";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$DSIsql = "DROP TABLE NarrativeComments";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Deleted";
} else {
    echo "Error deleting table: " . $conn->error;
}

$conn->close();
?> 