<?php

$servername = "mysql.cs.uky.edu";
$username = "bcty222";
$password = "test";
$dbname = "bcty222";

$conn = new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
	die("Connection failed: " . $conn->connect_error);

}

$user=$_POST['user'];
$pass=$_POST['pass'];
$authority = "admin";

$stmt = $conn->prepare("SELECT * FROM myLogin WHERE Type=? AND Email=? AND Password=?");
$stmt->bind_param("sss",$authority,$user,$pass);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows >= 1){
	//Return admin page
	echo '<!DOCTYPE html>
	<html>
        	<head>
			<title>User Access Requests</title>
			<style type="text/css">
				html {
					font-family: Arial, sans-serif, Times; 
				}
				form {
					margin-top: 20px;
				}
				td {
					padding: 10px;
				}
				th {
					background: #cccccc;	
					text-align: left;
					padding: 5px;
				}
				table {
					border-collapse: collapse;
				}
				tr:nth-child(odd) {background-color: #f0f0f0;}
				tr {
					border-bottom: 1px solid #cccccc;
				}	
				.submit {
					background-color: #28158f;		
					color: white;
					border-radius: .25rem;
					padding: 5px;
					font-size: 15px;	
				} 
				.submit:hover {
					background-color: white;
					color: #28158f;
					border-radius: .25rem;
					border-color: #cccccc;	
				}
				.statusFilter {
					display: inline-block;
					margin: 10px;
				}
				.submit:active {
					background-color: white;
					color: #28158f;
					border-radius: .25rem;
					border-color: black;	
				}	
			</style>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
			<script>
				$(document).ready( function(){
					$("#accepted").click( function() {
						$.ajax( 
							{
								url: "http://www.cs.uky.edu/~bcty222/499project/selectInvestigators.php",
								data: { filterTag: "Accepted" },
								success: function(result) {
									$("#tableContainer").html( result );
								} 
							}
						);
					});

					$("#pending").click( function() {
						$.ajax( 
							{
								url: "http://www.cs.uky.edu/~bcty222/499project/selectInvestigators.php",
								data: { filterTag: "Pending" },
								success: function(result) {
									$("#tableContainer").html( result );
								} 
							}
						);
					});

					$("#all").click( function() {
						$.ajax(
							{
								url: "http://www.cs.uky.edu/~bcty222/499project/selectInvestigators.php",
								data: { filterTag: "All" },
								success: function(result) {
									$("#tableContainer").html( result );
								}
							}
						


						);




					});

					$("#denied").click( function() {
						$.ajax( 
							{
								url: "http://www.cs.uky.edu/~bcty222/499project/selectInvestigators.php",
								data: { filterTag: "Denied" },
								success: function(result) {
									$("#tableContainer").html( result );
								} 
							}
						);
					});
				});
			</script>
        	</head>
	<body>
		<h1>User Access Requests</h1>
		<span><strong>Filter By: </strong></span>
		<button class="statusFilter submit" id="accepted">Accepted</button>
		<button class="statusFilter submit" id="pending">Pending</button>
		<button class="statusFilter submit" id="denied">Denied</button>
		<button class="statusFilter submit" id="all">Default</button>
        	<form action="http://www.cs.uky.edu/~pbbu223/CS499/WebApp/cont_form.php" method="post">
		<div id="tableContainer">
		<table style="width:auto;" id="myTable">
		<tr>
			<th>New Status</th>
                	<th>Email</th>
                	<th>County</th>
                	<th>Role Requested</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Current Status</th>
			<th>Submit</th>
        	</tr>
	'; //end echo


	$query = "SELECT Email, County, Type, FirstName, Lastname, Status FROM Investigator;";
	$myCount = 1;
	$newresult = mysqli_query($conn,$query);
	while ($row = mysqli_fetch_assoc($newresult))
	{
		//echo var_dump($row);		
		echo  '<tr>
		<td>
			<input type="radio" id="yes' .$myCount . '"' .' value="yes" name="yesno' .$myCount .'"
			<label for="yes">Accepted</label><br>
			<input type="radio" id="no' .$myCount . '"' .' value="no" name="yesno' .$myCount .'"
			<label for="no">Denied</label><br>
		</td>';
		foreach($row as $r)
		{
			echo '<td>';
			echo $r;
			echo '</td>';
		}
		$myCount += 1;
		echo '<td><button type="button" name="submit" value="Update" id="mySubmit" class="submit">Update</td>';
		echo '</tr>';
		
	}
	echo '	</table>
		</div><!-- End tableContainer-->
		</form>
		</body>
		<script src="myScript.js" type="text/javascript"></script>
		<script src="script.js" type="text/javascript"></script>
		</html>
	'; //end echo


}
else{
//Return error page
	echo "INCORRECT USERNAME, PASSWORD, OR INCORRECT PERMISSIONS";

}
mysqli_close($conn);
?>
