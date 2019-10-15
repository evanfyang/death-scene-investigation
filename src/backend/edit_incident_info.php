<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits incident information section in database from form 
 */

// Incident Information
$CaseNum=$_POST['CaseNum'];
$Version=$_POST['Version'];
$Death_Date=$_POST['Death_Date'];
$Death_Time=$_POST['Death_Time'];
$Injury_Date=$_POST['Injury_Date'];
$Injury_Time=$_POST['Injury_Time'];
$PlaceDeath=$_POST['PlaceDeath'];
$PlaceInjury=$_POST['PlaceInjury'];
$LS_Date=$_POST['LS_Date'];
$LS_Time=$_POST['LS_Time'];
$LS_Loc=$_POST['LS_Loc'];
$LS_CC=$_POST['LS_CC'];
$DD_Date=$_POST['DD_Date'];
$DD_Time=$_POST['DD_Time'];
$DD_Loc=$_POST['DD_Loc'];
$DD_CC=$_POST['DD_CC'];
$Found_Dead_By=$_POST['Found_Dead_By'];
$FDB_Address=$_POST['FDB_Address'];
$Last_Seen_Alive=$_POST['Last_Seen_Alive'];
$LSA_Address=$_POST['LSA_Address'];
$Witness=$_POST['Witness'];
$Weather=$_POST['Weather'];
$Activity=$_POST['Activity'];
$Position_Body=$_POST['Position_Body'];
$Livor=$_POST['Livor'];
$Rigor=$_POST['Rigor'];
$Consisent_With_Position=$_POST['Consisent_With_Position'];
$Clothed=$_POST['Clothed'];
$Partially_Clothed=$_POST['Partially_Clothed'];
$Unclothed=$_POST['Unclothed'];
$Dis_Mark=$_POST['Dis_Mark'];
$Body_Temp=$_POST['Body_Temp'];
$Body_Decomp=$_POST['Body_Decomp'];
$Immed_Cause=$_POST['Immed_Cause'];
$Due_to=$_POST['Due_to'];
$Due_to_2=$_POST['Due_to_2'];
    
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

// inserts data from app into incident information table
$sql = "INSERT INTO IncidentInformation (CaseNum, Version, Death_Date,Death_Time,Injury_Date,Injury_Time,PlaceDeath,PlaceInjury,LS_Date,LS_Time,LS_Loc,LS_CC,DD_Date,DD_Time,DD_Loc,DD_CC,Found_Dead_By,FDB_Address,Last_Seen_Alive,LSA_Address,Witness,Weather,Activity,Position_Body,Livor,Rigor,Consisent_With_Position,Clothed,Partially_Clothed,Unclothed,Dis_Mark,Body_Temp,Body_Decomp,Immed_Cause,Due_to,Due_to_2) VALUES ('".$CaseNum."', '".$Version."','".$Death_Date."','".$Death_Time."','".$Injury_Date."','".$Injury_Time."','".$PlaceDeath."','".$PlaceInjury."','".$LS_Date."','".$LS_Time."','".$LS_Loc."','".$LS_CC."','".$DD_Date."','".$DD_Time."','".$DD_Loc."','".$DD_CC."','".$Found_Dead_By."','".$FDB_Address."','".$Last_Seen_Alive."','".$LSA_Address."','".$Witness."','".$Weather."','".$Activity."','".$Position_Body."','".$Livor."','".$Rigor."','".$Consisent_With_Position."','".$Clothed."','".$Partially_Clothed."','".$Unclothed."','".$Dis_Mark."','".$Body_Temp."','".$Body_Decomp."','".$Immed_Cause."','".$Due_to."','".$Due_to_2."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>