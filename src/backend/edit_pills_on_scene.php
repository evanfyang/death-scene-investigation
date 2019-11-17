<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits pills on scene section in database from form 
 */

// Pills on scene
$CaseNum=$_POST['CaseNum'];
$Version=$_POST['Version'];
$row_num=$_POST['row_num'];
//$row_num=$_POST['row_num'];
$NameOfDrug=$_POST['NameOfDrug'];
$DateFilled=$_POST['DateFilled'];
$RxNum=$_POST['RxNum'];
$NameOnRx=$_POST['NameOnRx'];
$Dosing=$_POST['Dosing'];
$Strength=$_POST['Strength'];
$RxQuantity=$_POST['RxQuantity'];
$QuantityRemaining=$_POST['QuantityRemaining'];
$PharmName=$_POST['PharmName'];
$PharmCity=$_POST['PharmCity'];


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

// inserts data from app into pills on scene table
<<<<<<< HEAD
$sql = "INSERT INTO PillsOnScene (CaseNum, Version, row_num, NameOfDrug, DateFilled, RxNum, NameOnRx, Dosing, Strength, RxQuantity, QuantityRemaining, PharmName, PharmCity) VALUES ('".$CaseNum."','".$Version."', '".$row_num."','".$NameOfDrug."','".$DateFilled."','".$RxNum."','".$NameOnRx."','".$Dosing."','".$Strength."','".$RxQuantity."','".$QuantityRemaining."','".$PharmName."','".$PharmCity."')";
=======
$sql = "INSERT INTO PillsOnScene (CaseNum, Version, NameOfDrug, DateFilled, RxNum, NameOnRx, Dosing, Strength, RxQuantity, QuantityRemaining, PharmName, PharmCity) VALUES ('".$CaseNum."','".$Version."','".$NameOfDrug."','".$DateFilled."','".$RxNum."','".$NameOnRx."','".$Dosing."','".$Strength."','".$RxQuantity."','".$QuantityRemaining."','".$PharmName."','".$PharmCity."')";
>>>>>>> 9a5d209c1decd40d0cf4d4f27affdca4c812febe

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
