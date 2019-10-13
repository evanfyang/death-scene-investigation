<?php
	//$secret = $_POST["secretWord"];
	//if ("^YGUG6tqpzpqE6G" != $secret) exit; // note the same secret as the app - could be let out if this check is not required. secretWord is not entered by the user and is used to prevent unauthorized access to the database
	
	// Death Scene Investigation
	$CaseNum = "Case 1";
	$Coroner_Deputy = "Coroner 1";
	$County = "County 1";
	$Date_of_Call = "Date 1";
	$Time_of_Call = "Time 1";
	$Person_Calling = "Person 1";
	$Police_Agency = "Police 1";
	$Time_of_Arrival = "Time 1";
	$Suspected = "Suspect 1";
	
	
// POST items should be checked for bad information before being added to the database.
// Create connection
	$mysqli=mysqli_connect("statsqltest.as.uky.edu","deathrecadmin","^YGUG6tqpzpqE6G","deathrecapp"); // localhost, user name, user password, database name
 
// Check connection
	if (mysqli_connect_errno())
	{
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	else{
	echo '1';
		$DSIquery = "INSERT INTO DeathSceneInvestigation (CaseNum, Coroner_Deputy, County, Date_of_Call, Time_of_Call, Person_Calling, Police_Agency, Time_of_Arrival, Suspected) VALUES ('Case 1','Coroner 1','County 1','Date 1','Time 1','Person 1','Police 1','Time 1','Suspected')";
		$result = mysqli_query($mysqli,$DSIquery);
		echo $result; // sends 1 if insert worked
	}
?>

