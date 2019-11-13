<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits decedent information section in database from form
 */


// Decedent Information
$CaseNum=$_POST['CaseNum'];
$Version=$_POST['Version']; 
$First_Name=$_POST['First_Name']; 
$Last_Name=$_POST['Last_Name'];
$Gender=$_POST['Gender'];
$Age=$_POST['Age'] ?? '0';
$Birth_Place=$_POST['Birth_Place'];
$SSN_Num=$_POST['SSN_Num'];
$Address=$_POST['Address'];
$City=$_POST['City'];
$Country_of_Res=$_POST['Country_of_Res'];
$State_of_Res=$_POST['State_of_Res'];
$Zip=$_POST['Zip'];
$Height=$_POST['Height'] ?? '0';
$Weight=$_POST['Weight'] ?? '0';
$Eyes=$_POST['Eyes'];
$Hair=$_POST['Hair'];
$Race=$_POST['Race'];
$Ethnicity=$_POST['Ethnicity'];
$Marital_Status=$_POST['Marital_Status'];
$Surving_Spouse=$_POST['Surving_Spouse'];
$Mother_MN=$_POST['Mother_MN'];
$Father_N=$_POST['Father_N'];
$Pregnant=$_POST['Pregnant'] ?? '0';
$Homeless=$_POST['Homeless'] ?? '0';
$Veteran=$_POST['Veteran'] ?? '0';
$Retired=$_POST['Retired'] ?? '0';
$Active=$_POST['Active'];
$other1=$_POST['other1'] ?? '0';
$other_field=$_POST['other_field'];
$Branch=$_POST['Branch'];
$Last_Tour=$_POST['Last_Tour'];
$Education=$_POST['Education'];	
$Employment=$_POST['Employment'];
$Industry=$_POST['Industry'];
$Current_Occupations=$_POST['Current_Occupations'];

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

// inserts data from app into decedent information table
$sql = "INSERT INTO DecedentInformation (CaseNum, Version, First_Name, Last_Name, Gender, Age, Birth_Place, SSN_Num, Address, City, Country_of_Res, State_of_Res, Zip, Height, Weight, Eyes, Hair, Race, Ethnicity, Marital_Status, Surving_Spouse, Mother_MN, Father_N, Pregnant, Homeless, Veteran, Retired, Active, other1, other_field, Branch, Last_Tour, Education, Employment, Industry, Current_Occupations) VALUES ('".$CaseNum."', '".$Version."''".$First_Name."','".$Last_Name."','".$Gender."','".$Age."','".$Birth_Place."','".$SSN_Num."','".$Address."','".$City."','".$Country_of_Res."','".$State_of_Res."','".$Zip."','".$Height."','".$Weight."','".$Eyes."','".$Hair."','".$Race."','".$Ethnicity."','".$Marital_Status."','".$Surving_Spouse."','".$Mother_MN."','".$Father_N."','".$Pregnant."','".$Homeless."','".$Veteran."','".$Retired."','".$Active."','".$other1."', '".$other_field."','".$Branch."','".$Last_Tour."','".$Education."','".$Employment."','".$Industry."','".$Current_Occupations."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
