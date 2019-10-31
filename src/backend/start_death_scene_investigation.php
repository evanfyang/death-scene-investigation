<?php
/*
 * 1) User chooses to "start a DSI" 
 * 2) iPhone screen prompts user to enter a case number
 * 3) In the backend, a new DSI entity, along with ALL of the form sections, are
 *    created for this case number 
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
$casenum = $_POST['casenum'];

// Make sure the case doesn't already exist
$sql = "SELECT * FROM DeathSceneInvestigation WHERE `CaseNum`='". $casenum ."'";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);

if ($count == 0) { // There is no matching case 
    // Create the DSI entity
    $DSI_sql = "INSERT INTO DeathSceneInvestigation(`CaseNum`) VALUES (?)";
    $DSI_stmt = $conn->prepare($DSI_sql);
    $DSI_stmt->bind_param('s', $casenum);
    
    if($DSI_stmt->execute()) {
        // Create the associated weak entities with version 0
        // Decedent information
        $decedent_SQL = "INSERT INTO DecedentInformation(`CaseNum`, `Version`) VALUES (?, 0)";
        $decedent_stmt = $conn->prepare($decedent_SQL); 
        $decedent_stmt->bind_param('s', $casenum);
        $decedent_stmt->execute(); 
        $decedent_stmt->close(); 

        // Next of Kin
        $next_kin_SQL = "INSERT INTO NextofKin(`CaseNum`, `Version`) VALUES (?, 0)";
        $next_kin_stmt = $conn->prepare($next_kin_SQL); 
        $next_kin_stmt->bind_param('s', $casenum);
        $next_kin_stmt->execute(); 
        $next_kin_stmt->close(); 
        
        // Incident Information
        $incident_SQL = "INSERT INTO IncidentInformation(`CaseNum`, `Version`) VALUES (?, 0)";
        $incident_stmt = $conn->prepare($incident_SQL); 
        $incident_stmt->bind_param('s', $casenum);
        $incident_stmt->execute(); 
        $incident_stmt->close(); 
        
        // Investigation
        $investigation_SQL = "INSERT INTO Investigation(`CaseNum`, `Version`) VALUES (?, 0)";
        $investigation_stmt = $conn->prepare($investigation_SQL); 
        $investigation_stmt->bind_param('s', $casenum);
        $investigation_stmt->execute(); 
        $investigation_stmt->close(); 
        
        // Narrative Comments
        $narrative_SQL = "INSERT INTO NarrativeComments(`CaseNum`, `Version`) VALUES (?, 0)";
        $narrative_stmt = $conn->prepare($narrative_SQL); 
        $narrative_stmt->bind_param('s', $casenum);
        $narrative_stmt->execute(); 
        $narrative_stmt->close(); 
        
        // Pills on Scene
        $pills_SQL = "INSERT INTO PillsOnScene(`CaseNum`, `Version`) VALUES (?, 0)";
        $pills_stmt = $conn->prepare($pills_SQL); 
        $pills_stmt->bind_param('s', $casenum);
        $pills_stmt->execute(); 
        $pills_stmt->close();

        echo "Success"; 
       
    }
    else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    $DSI_stmt->close();


    

}
else // Username already in database 
{
	// Invalid
	echo"Error! A case with this Case # already exists. Are you sure you didn't mean to edit?.";
}

$conn->close();
?>
