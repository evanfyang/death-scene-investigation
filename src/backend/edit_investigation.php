<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits investigation information section in database from form 
 */

// Investigation
$CaseNum=$_POST['CaseNum'];	
$Version=$_POST['Version'];	
$Evidence_Collected=$_POST['Evidence_Collected'];	
$Collected_By=$_POST['Collected_By'];	
$Date=$_POST['Date'];	
$Time=$_POST['Time'];	
$Photo=$_POST['Photo'];	
$Toxicology_Collected=$_POST['Toxicology_Collected'];	
$Blood=$_POST['Blood'];	
$Urine=$_POST['Urine'];	
$Virteous=$_POST['Virteous'];	
$Ems_At_Scene=$_POST['Ems_At_Scene'];	
$Victim_Seen=$_POST['Victim_Seen'];	
$Admitted=$_POST['Admitted'];	
$Attending_PHN=$_POST['Attending_PHN'];	
$Name_Ph=$_POST['Name_Ph'];	
$Number_PH=$_POST['Number_PH'];	
$Medical_History=$_POST['Medical_History'];	
$Diabetes=$_POST['Diabetes'];	
$Medications=$_POST['Medications'];	
$Medical_Record_Req=$_POST['Medical_Record_Req'];	
$Koda_Notified=$_POST['Koda_Notified'];	
$Organ_Donate=$_POST['Organ_Donate'];	
$Tissue_Donate=$_POST['Tissue_Donate'];	
$Cornea_Donate=$_POST['Cornea_Donate'];	
$Police_Dep_Notif=$_POST['Police_Dep_Notif'];	
$Officer=$_POST['Officer'];	
$KY_Marsh_Notif=$_POST['KY_Marsh_Notif'];	
$Osha_Req=$_POST['Osha_Req'];	
$Coroners_Inq=$_POST['Coroners_Inq'];	
$Autopsy=$_POST['Autopsy'];	
$Medical_Examiner=$_POST['Medical_Examiner'];	
$Death_Certificate_Signed=$_POST['Death_Certificate_Signed'];	
$Signed_By=$_POST['Signed_By'];	
$Alcohol_Use_Sus=$_POST['Alcohol_Use_Sus'];	
$Drug_Use_Sus=$_POST['Drug_Use_Sus'];	
$Alcohol=$_POST['Alcohol'];	
$Alcohol_Field=$_POST['Alcohol_Field'];	
$Amphe=$_POST['Amphe'];	
$Amph_Field=$_POST['Amph_Field'];	
$Barbitua=$_POST['Barbitua'];	
$Barbituat_field=$_POST['Barbituat_field'];	
$Benzo=$_POST['Benzo'];	
$Benzo_field=$_POST['Benzo_field'];	
$Cannabinoids=$_POST['Cannabinoids'];	
$Cannab_Field=$_POST['Cannab_Field'];	
$Cocaine=$_POST['Cocaine'];	
$Cocaine_Field=$_POST['Cocaine_Field'];	
$Fentanyl=$_POST['Fentanyl'];	
$Fent_Field=$_POST['Fent_Field'];	
$Methadone=$_POST['Methadone'];	
$Methadone_Field=$_POST['Methadone_Field'];	
$Opiates=$_POST['Opiates'];	
$Opiates_Field=$_POST['Opiates_Field'];	
$Oxycodone=$_POST['Oxycodone'];	
$Oxycodone_Field=$_POST['Oxycodone_Field'];	
$Propo=$_POST['Propo'];	
$Propo_field=$_POST['Propo_field'];	
$Analgesics=$_POST['Analgesics'];	
$Analgesics_field=$_POST['Analgesics_field'];	
$Bupren=$_POST['Bupren'];	
$Bupren_Field=$_POST['Bupren_Field'];	
$Anticonv=$_POST['Anticonv'];	
$Anti_conv_Field=$_POST['Anti_conv_Field'];	
$Antidep=$_POST['Antidep'];	
$Antdep_field=$_POST['Antdep_field'];	
$Antipsycho=$_POST['Antipsycho'];	
$Antipsycho_fields=$_POST['Antipsycho_fields'];	
$Other=$_POST['Other'];	
$Other_Field=$_POST['Other_Field'];	
$Body_Transported=$_POST['Body_Transported'];	
$Cremation=$_POST['Cremation'];	
$Cremation_Permit=$_POST['Cremation_Permit'];	
$Body_Released_To=$_POST['Body_Released_To'];	
$Cost_of_Transport=$_POST['Cost_of_Transport'];	
$Funeral_Home=$_POST['Funeral_Home'];	
$Phone_Number_1=$_POST['Phone_Number_1'];	
$Head=$_POST['Head'];	
$Neck=$_POST['Neck'];	
$Face=$_POST['Face'];	
$Thorax=$_POST['Thorax'];	
$Abdo_LB=$_POST['Abdo_LB'];	
$Spine=$_POST['Spine'];	
$Upper_Ex=$_POST['Upper_Ex'];	
$Lower_Ex=$_POST['Lower_Ex'];	
$Unknown=$_POST['Unknown'];	
$Additional_Wounds=$_POST['Additional_Wounds'];	
$Firearm_Type=$_POST['Firearm_Type'];	
$Firearm_Recov=$_POST['Firearm_Recov'];	
$Casings_Recov=$_POST['Casings_Recov'];	
$Weapon_NF=$_POST['Weapon_NF'];	
$Other_Firearm=$_POST['Other_Firearm'];	
$Firearm_SN=$_POST['Firearm_SN'];	
$Caliber=$_POST['Caliber'];	
$Gauge=$_POST['Gauge'];	
$Firearm_Owner=$_POST['Firearm_Owner'];	
$Firearm_Storage=$_POST['Firearm_Storage'];	
$Gunshot_Residue=$_POST['Gunshot_Residue'];	
$Dominant_Hand=$_POST['Dominant_Hand'];	
$Type_of_Amm=$_POST['Type_of_Amm'];	
$Number_Of_Shells=$_POST['Number_Of_Shells'];	
    
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

// inserts data from app into investigation table
$sql = "INSERT INTO Investigation (CaseNum,Version,Evidence_Collected,Collected_By,Date,Time,Photo,Toxicology_Collected,Blood,Urine,Virteous,Ems_At_Scene,Victim_Seen,Admitted,Attending_PHN,Name_Ph,Number_PH,Medical_History,Diabetes,Medications,Medical_Record_Req,Koda_Notified,Organ_Donate,Tissue_Donate,Cornea_Donate,Police_Dep_Notif,Officer,KY_Marsh_Notif,Osha_Req,Coroners_Inq,Autopsy,Medical_Examiner,Death_Certificate_Signed,Signed_By,Alcohol_Use_Sus,Drug_Use_Sus,Alcohol,Alcohol_Field,Amphe,Amph_Field,Barbitua,Barbituat_field,Benzo,Benzo_field,Cannabinoids,Cannab_Field,Cocaine,Cocaine_Field,Fentanyl,Fent_Field,Methadone,Methadone_Field,Opiates,Opiates_Field,Oxycodone,Oxycodone_Field,Propo,Propo_field,Analgesics,Analgesics_field,Bupren,Bupren_Field,Anticonv,Anti_conv_Field,Antidep,Antdep_field,Antipsycho,Antipsycho_fields,Other,Other_Field,Body_Transported,Cremation,Cremation_Permit,Body_Released_To,Cost_of_Transport,Funeral_Home,Phone_Number_1,Head,Neck,Face,Thorax,Abdo_LB,Spine,Upper_Ex,Lower_Ex,Unknown,Additional_Wounds,Firearm_Type,Firearm_Recov,Casings_Recov,Weapon_NF,Other_Firearm,Firearm_SN,Caliber,Gauge,Firearm_Owner,Firearm_Storage,Gunshot_Residue,Dominant_Hand,Type_of_Amm,Number_Of_Shells) VALUES ('".$CaseNum."','".$Version."','".$Evidence_Collected."','".$Collected_By."','".$Date."','".$Time."','".$Photo."','".$Toxicology_Collected."','".$Blood."','".$Urine."','".$Virteous."','".$Ems_At_Scene."','".$Victim_Seen."','".$Admitted."','".$Attending_PHN."','".$Name_Ph."','".$Number_PH."','".$Medical_History."','".$Diabetes."','".$Medications."','".$Medical_Record_Req."','".$Koda_Notified."','".$Organ_Donate."','".$Tissue_Donate."','".$Cornea_Donate."','".$Police_Dep_Notif."','".$Officer."','".$KY_Marsh_Notif."','".$Osha_Req."','".$Coroners_Inq."','".$Autopsy."','".$Medical_Examiner."','".$Death_Certificate_Signed."','".$Signed_By."','".$Alcohol_Use_Sus."','".$Drug_Use_Sus."','".$Alcohol."','".$Alcohol_Field."','".$Amphe."','".$Amph_Field."','".$Barbitua."','".$Barbituat_field."','".$Benzo."','".$Benzo_field."','".$Cannabinoids."','".$Cannab_Field."','".$Cocaine."','".$Cocaine_Field."','".$Fentanyl."','".$Fent_Field."','".$Methadone."','".$Methadone_Field."','".$Opiates."','".$Opiates_Field."','".$Oxycodone."','".$Oxycodone_Field."','".$Propo."','".$Propo_field."','".$Analgesics."','".$Analgesics_field."','".$Bupren."','".$Bupren_Field."','".$Anticonv."','".$Anti_conv_Field."','".$Antidep."','".$Antdep_field."','".$Antipsycho."','".$Antipsycho_fields."','".$Other."','".$Other_Field."','".$Body_Transported."','".$Cremation."','".$Cremation_Permit."','".$Body_Released_To."','".$Cost_of_Transport."','".$Funeral_Home."','".$Phone_Number_1."','".$Head."','".$Neck."','".$Face."','".$Thorax."','".$Abdo_LB."','".$Spine."','".$Upper_Ex."','".$Lower_Ex."','".$Unknown."','".$Additional_Wounds."','".$Firearm_Type."','".$Firearm_Recov."','".$Casings_Recov."','".$Weapon_NF."','".$Other_Firearm."','".$Firearm_SN."','".$Caliber."','".$Gauge."','".$Firearm_Owner."','".$Firearm_Storage."','".$Gunshot_Residue."','".$Dominant_Hand."','".$Type_of_Amm."','".$Number_Of_Shells."')";
$result = mysqli_query($mysqli, $DIquery);
if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>