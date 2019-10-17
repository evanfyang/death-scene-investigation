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

// Login
$sql = "SELECT * FROM login";
$result = $conn->query($sql);
echo "Death Scene Investigation: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Username: " . $row["user"]. " " .
		 "Password: " . $row["password"]."<br> <br>";
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}


// Show DSI Table
$sql = "SELECT * FROM DeathSceneInvestigation";
$result = $conn->query($sql);
echo "Death Scene Investigation: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "CaseNum: " . $row["CaseNum"]. " " .
		 "Coroner_Deputy: " . $row["Coroner_Deputy"]. " " .
		 "County: " . $row["County"]. " " .
		 "Date_of_Call: " . $row["Date_of_Call"]. " " .
		 "Time_of_Call: " . $row["Time_of_Call"]. " " .
		 "Person_Calling: " . $row["Person_Calling"]. " " .
		 "Police_Agency: " . $row["Police_Agency"]. " " .
		 "Time_of_Arrival: " . $row["Time_of_Arrival"]. " " .
		 "Suspected: " . $row["Suspected"]."<br> <br>";
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}
// Show Next of Kin Table
$sql = "SELECT * FROM NextofKin";
echo "Next of Kin: <br>";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
 
		echo "CaseNum: " . $row["CaseNum"]. " " .
		 "Notified By: " . $row["Notified_by"]. " " .
		 "Date Notified: " . $row["Date_Notified"]. " " .
		 "Time_Notified: " . $row["Time_Notified"]. " " .
		 "Name: " . $row["Name"]. " " .
		 "Relationship: " . $row["Relationship"]. " " .
		 "Phone Number: " . $row["Phone Number"]. " " .
		 "Address: " . $row["Adress"]. " " .
		 "City: " . $row["City_1"]."<br> <br>";
		 "State: " . $row["City_1"]."<br> <br>";
		 "Zip: " . $row["City_1"]."<br> <br>";

    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}


$sql = "SELECT * FROM DecedentInformation";
$result = $conn->query($sql);
echo "Decedent Information: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "CaseNum: " . $row["CaseNum"]. " " .
		 "First_Name: " . $row["First_Name"]. " " .
		 "Last_Name: " . $row["Last_Name"]. " " .
		 "Gender: " . $row["Gender"]. " " .
		 "Age: " . $row["Age"]. " " .
		 "Birth_Place: " . $row["Birth_Place"]. " " .
		 "SSN_Number: " . $row["SSN_Number"]. " " .
		 "Address: " . $row["Address"]. " " .
		 "County_of_Res: " . $row["County_of_Res"]."<br> <br>";
		 "State_of_Res: " . $row["State_of_Res"]."<br> <br>";
		 "Zip: " . $row["Zip"]."<br> <br>";
		 "Height: " . $row["Height"]."<br> <br>";
		 "Weight: " . $row["Weight"]."<br> <br>";
		 "Eyes: " . $row["Eyes"]."<br> <br>";
		 "Hair: " . $row["Hair"]."<br> <br>";
		 "Race: " . $row["Race"]."<br> <br>";
		 "Ethnicity: " . $row["Ethnicity"]."<br> <br>";
		 "Marital_Status: " . $row["Marital_Status"]."<br> <br>";
		 "Surviving_Spouse: " . $row["Surviving_Spouse"]."<br> <br>";
		 "Mother_MN: " . $row["Mother_MN"]."<br> <br>";
		 "Father_N: " . $row["Father_N"]."<br> <br>";
		 "Pregnant: " . $row["Pregnant"]."<br> <br>";
		 "Homeless: " . $row["Homeless"]."<br> <br>";
		 "Veteran: " . $row["Veteran"]."<br> <br>";
		 "Retired: " . $row["Retired"]."<br> <br>";
		 "Active: " . $row["Active"]."<br> <br>";
		 "Other: " . $row["other1"]."<br> <br>";
		 "Branch: " . $row["Branch"]."<br> <br>";
		 "Last_Tour: " . $row["Last_Tour"]."<br> <br>";
		 "Education: " . $row["Education"]."<br> <br>";
		 "Employment: " . $row["Employment"]."<br> <br>";
		 "Industry: " . $row["Industry"]."<br> <br>";
		 "Current_Occupation: " . $row["Current_Occupation"]."<br> <br>";
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}

// Incident Information
$sql = "SELECT * FROM IncidentInformation";
$result = $conn->query($sql);
echo "Incident Information: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "CaseNum: " . $row["CaseNum"]. " " .
		 "Death_Date: " . $row["Death_Date"]. " " .
		 "Death_Time: " . $row["Death_Time"]. " " .
		 "Injury_Date: " . $row["Injury_Date"]. " " .
		 "Injury_Time: " . $row["Injury_Time"]. " " .
		 "PlaceDeath: " . $row["PlaceDeath"]. " " .
		 "PlaceInjury: " . $row["PlaceInjury"]. " " .
		 "LS_Date: " . $row["LS_Date"]. " " .
		 "LS_Time: " . $row["LS_Time"]."<br> <br>";
		 "LS_Loc: " . $row["LS_Loc"]."<br> <br>";
		 "LS_CC: " . $row["LS_CC"]."<br> <br>";
		 "DD_Date: " . $row["DD_Date"]."<br> <br>";
		 "DD_Time: " . $row["DD_Time"]."<br> <br>";
		 "DD_Loc: " . $row["DD_Loc"]."<br> <br>";
		 "DD_CC: " . $row["DD_CC"]."<br> <br>";
		 "Found_Dead_By: " . $row["Found_Dead_By"]."<br> <br>";
		 "FDB_Address: " . $row["FDB_Address"]."<br> <br>";
		 "Last_Seen_Alive: " . $row["Last_Seen_Alive"]."<br> <br>";
		 "LSA_Address: " . $row["LSA_Address"]."<br> <br>";
		 "Witness: " . $row["Witness"]."<br> <br>";
		 "Weather: " . $row["Weather"]."<br> <br>";
		 "Activity: " . $row["Activity"]."<br> <br>";
		 "Position_Body: " . $row["Position_Body"]."<br> <br>";
		 "Livor: " . $row["Livor"]."<br> <br>";
		 "Rigor: " . $row["Rigor"]."<br> <br>";
		 "Consistent: " . $row["Consistent"]."<br> <br>";
		 "Clothed: " . $row["Clothed"]."<br> <br>";
		 "Partially_Clothed: " . $row["Partially_Clothed"]."<br> <br>";
		 "Unclothed: " . $row["Unclothed"]."<br> <br>";
		 "Dis_Mark: " . $row["Dis_Mark"]."<br> <br>";
		 "Body_Temp: " . $row["Body_Temp"]."<br> <br>";
		 "Body_Decomp: " . $row["Body_Decomp"]."<br> <br>";
		 "Immed_Cause: " . $row["Immed_Cause"]."<br> <br>";
		 "Due_to: " . $row["Immed_Cause"]."<br> <br>";
		 "Due_to_2: " . $row["Immed_Cause"]."<br> <br>";
	 
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}

// Investigation
$sql = "SELECT * FROM Investigation";
$result = $conn->query($sql);
echo "Investigation: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "CaseNum: " . $row["CaseNum"]. " " .
		 "Collected_By: " . $row["Collected_By"]. " " .
		 "Evidence_Collected: " . $row["Evidence_Collected"]. " " .
		 "Collected_By: " . $row["Collected_By"]. " " .
		 "Date: " . $row["Date"]. " " .
		 "Time: " . $row["Time"]. " " .
		 "Photo: " . $row["Photo"]. " " .
		 "Toxicology_Collected: " . $row["Toxicology_Collected"]. " " .
		 "Blood: " . $row["Blood"]."<br> <br>";
		 "Urine: " . $row["Urine"]."<br> <br>";
		 "Virteous: " . $row["Virteous"]."<br> <br>";
		 "Ems_At_Scene: " . $row["Ems_At_Scene"]."<br> <br>";
		 "Victim_Seen: " . $row["Victim_Seen"]."<br> <br>";
		 "Admitted: " . $row["Admitted"]."<br> <br>";
		 "Name_Ph: " . $row["Name_Ph"]."<br> <br>";
		 "Number_Ph: " . $row["Number_Ph"]."<br> <br>";
		 "Medical_History: " . $row["Medical_History"]."<br> <br>";
		 "Diabetes: " . $row["Diabetes"]."<br> <br>";
		 "Medications: " . $row["Medical_Record_Req"]."<br> <br>";
		 "Medical_Record_Req: " . $row["Medical_Record_Req"]."<br> <br>";
		 "Koda_Notified: " . $row["Koda_Notified"]."<br> <br>";
		 "Organ_Donate: " . $row["Organ_Donate"]."<br> <br>";
		 "Tissue_Donate: " . $row["Tissue_Donate"]."<br> <br>";
		 "Cornea_Donate: " . $row["Cornea_Donate"]."<br> <br>";
		 "Police_Dep_Notif: " . $row["Police_Dep_Notif"]."<br> <br>";
		 "Officer: " . $row["Officer"]."<br> <br>";
		 "KY_Marsh_Notif: " . $row["KY_Marsh_Notif"]."<br> <br>";
		 "Osha_Req: " . $row["Osha_Req"]."<br> <br>";
		 "Coroners_Inq: " . $row["Coroners_Inq"]."<br> <br>";
		 "Autopsy: " . $row["Autopsy"]."<br> <br>";
		 "Medical_Examiner: " . $row["Medical_Examiner"]."<br> <br>";
		 "Death_Certificate_Signed: " . $row["Death_Certificate_Signed"]."<br> <br>";
		 "Signed_By: " . $row["Signed_By"]."<br> <br>";
		 "Alcohol_Use_Sus: " . $row["Alcohol_Use_Sus"]."<br> <br>";
		 "Drug_Use_Sus: " . $row["Drug_Use_Sus"]."<br> <br>";
		 "Alcohol: " . $row["Alcohol"]."<br> <br>";
		 "Alcohol_Field: " . $row["Alcohol_Field"]."<br> <br>";
 
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}

// Case History
$sql = "SELECT * FROM CaseHistory";
$result = $conn->query($sql);
echo "Case History: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "CaseNum: " . $row["CaseNum"]. " " .
		 "N_NursingHome: " . $row["N_NursingHome"]. " " .
		 "N_SIDS: " . $row["N_SIDS"]. " " .
		 "A_TargetShooting: " . $row["A_TargetShooting"]. " " .
		 "O_TreatMenHealth: " . $row["O_TreatMenHealth"]."<br> <br>";

		 
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}

// Narrative Comments
$sql = "SELECT * FROM NarrativeComments";
$result = $conn->query($sql);
echo "Narrative Comments: <br>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Narrative_Comments: " . $row["Narrative_Comments"]."<br> <br>";

		 
    }
} else {
    echo "Error showing table: " . $conn->error;
}
if ($result->num_rows == 0)
{
	echo "Table Empty";
}

$conn->close();
?> 