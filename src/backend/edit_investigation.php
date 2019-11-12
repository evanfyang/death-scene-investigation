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
$Photo=$_POST['Photo'] ?? '0';	
$Toxicology_Collected=$_POST['Toxicology_Collected'] ?? '0';	
$Blood=$_POST['Blood'] ?? '0';	
$Urine=$_POST['Urine'] ?? '0';	
$Virteous=$_POST['Virteous'] ?? '0';
$Ems_At_Scene=$_POST['Ems_At_Scene'] ?? '0';		
$Victim_Seen=$_POST['Victim_Seen'] ?? '0';	
$Admitted=$_POST['Admitted'] ?? '0';	
$Attending_PHN=$_POST['Attending_PHN'] ?? '0';	
$Name_Ph=$_POST['Name_Ph'];	
$Number_PH=$_POST['Number_PH'];	
$Medical_History=$_POST['Medical_History'];	
$Diabetes=$_POST['Diabetes'] ?? '0';	
$Medications=$_POST['Medications'];	
$Medical_Record_Req=$_POST['Medical_Record_Req'] ?? '0';	
$Koda_Notified=$_POST['Koda_Notified'] ?? '0';	
$Organ_Donate=$_POST['Organ_Donate'] ?? '0';	
$Tissue_Donate=$_POST['Tissue_Donate'] ?? '0';	
$Cornea_Donate=$_POST['Cornea_Donate'] ?? '0';	
$Police_Dep_Notif=$_POST['Police_Dep_Notif'] ?? '0';	
$Officer=$_POST['Officer'];	
$KY_Marsh_Notif=$_POST['KY_Marsh_Notif'] ?? '0';	
$Osha_Req=$_POST['Osha_Req'] ?? '0';	
$Coroners_Inq=$_POST['Coroners_Inq'] ?? '0';	
$Autopsy=$_POST['Autopsy'] ?? '0';	
$Medical_Examiner=$_POST['Medical_Examiner'] ?? '0';	
$Death_Certificate_Signed=$_POST['Death_Certificate_Signed'] ?? '0';	
$Signed_By=$_POST['Signed_By'] ?? '0';	
$Alcohol_Use_Sus=$_POST['Alcohol_Use_Sus'] ?? '0';	
$Drug_Use_Sus=$_POST['Drug_Use_Sus'] ?? '0';	
$Alcohol=$_POST['Alcohol'] ?? '0';	
$Alcohol_Field=$_POST['Alcohol_Field'];	
$Amphe=$_POST['Amphe'] ?? '0';	
$Amph_Field=$_POST['Amph_Field'];	
$Barbitua=$_POST['Barbitua'] ?? '0';	
$Barbituat_field=$_POST['Barbituat_field'];	
$Benzo=$_POST['Benzo'] ?? '0';	
$Benzo_field=$_POST['Benzo_field'];	
$Cannabinoids=$_POST['Cannabinoids'] ?? '0';	
$Cannab_Field=$_POST['Cannab_Field'];	
$Cocaine=$_POST['Cocaine'] ?? '0';	
$Cocaine_Field=$_POST['Cocaine_Field'];	
$Fentanyl=$_POST['Fentanyl'] ?? '0';	
$Fent_Field=$_POST['Fent_Field'];	
$Methadone=$_POST['Methadone'] ?? '0';	
$Methadone_Field=$_POST['Methadone_Field'];	
$Opiates=$_POST['Opiates'] ?? '0';	
$Opiates_Field=$_POST['Opiates_Field'];	
$Oxycodone=$_POST['Oxycodone'] ?? '0';	
$Oxycodone_Field=$_POST['Oxycodone_Field'];	
$Propo=$_POST['Propo'] ?? '0';	
$Propo_field=$_POST['Propo_field'];	
$Analgesics=$_POST['Analgesics'] ?? '0';	
$Analgesics_field=$_POST['Analgesics_field'];	
$Bupren=$_POST['Bupren'] ?? '0';	
$Bupren_Field=$_POST['Bupren_Field'];	
$Anticonv=$_POST['Anticonv'] ?? '0';	
$Anti_conv_Field=$_POST['Anti_conv_Field'];	
$Antidep=$_POST['Antidep'] ?? '0';	
$Antdep_field=$_POST['Antdep_field'];	
$Antipsycho=$_POST['Antipsycho'] ?? '0';	
$Antipsycho_fields=$_POST['Antipsycho_fields'];	
$Other=$_POST['Other'] ?? '0';	
$Other_Field=$_POST['Other_Field'];	
$Body_Transported=$_POST['Body_Transported'] ?? '0';	
$Cremation=$_POST['Cremation'] ?? '0';	
$Cremation_Permit=$_POST['Cremation_Permit'] ?? '0';	
$Body_Released_To=$_POST['Body_Released_To'];	
$Cost_of_Transport=$_POST['Cost_of_Transport'];	
$Funeral_Home=$_POST['Funeral_Home'];	
$Phone_Number_1=$_POST['Phone_Number_1'];	
$Head=$_POST['Head'] ?? '0';	
$Neck=$_POST['Neck'] ?? '0';	
$Face=$_POST['Face'] ?? '0';	
$Thorax=$_POST['Thorax'] ?? '0';	
$Abdo_LB=$_POST['Abdo_LB'] ?? '0';	
$Spine=$_POST['Spine'] ?? '0';	
$Upper_Ex=$_POST['Upper_Ex'] ?? '0';	
$Lower_Ex=$_POST['Lower_Ex'] ?? '0';	
$Unknown=$_POST['Unknown'] ?? '0';	
$Additional_Wounds=$_POST['Additional_Wounds'] ?? '0';	
$Firearm_Type=$_POST['Firearm_Type'];	
$Firearm_Recov=$_POST['Firearm_Recov'] ?? '0';	
$Casings_Recov=$_POST['Casings_Recov'] ?? '0';	
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

// inserts data from app into investigation table
$sql = "INSERT INTO Investigation (CaseNum,Version,Evidence_Collected,Collected_By,Date,Time,Photo,Toxicology_Collected,Blood,Urine,Virteous,Ems_At_Scene,Victim_Seen,Admitted,Attending_PHN,Name_Ph,Number_PH,Medical_History,Diabetes,Medications,Medical_Record_Req,Koda_Notified,Organ_Donate,Tissue_Donate,Cornea_Donate,Police_Dep_Notif,Officer,KY_Marsh_Notif,Osha_Req,Coroners_Inq,Autopsy,Medical_Examiner,Death_Certificate_Signed,Signed_By,Alcohol_Use_Sus,Drug_Use_Sus,Alcohol,Alcohol_Field,Amphe,Amph_Field,Barbitua,Barbituat_field,Benzo,Benzo_field,Cannabinoids,Cannab_Field,Cocaine,Cocaine_Field,Fentanyl,Fent_Field,Methadone,Methadone_Field,Opiates,Opiates_Field,Oxycodone,Oxycodone_Field,Propo,Propo_field,Analgesics,Analgesics_field,Bupren,Bupren_Field,Anticonv,Anti_conv_Field,Antidep,Antdep_field,Antipsycho,Antipsycho_fields,Other,Other_Field,Body_Transported,Cremation,Cremation_Permit,Body_Released_To,Cost_of_Transport,Funeral_Home,Phone_Number_1,Head,Neck,Face,Thorax,Abdo_LB,Spine,Upper_Ex,Lower_Ex,Unknown,Additional_Wounds,Firearm_Type,Firearm_Recov,Casings_Recov,Weapon_NF,Other_Firearm,Firearm_SN,Caliber,Gauge,Firearm_Owner,Firearm_Storage,Gunshot_Residue,Dominant_Hand,Type_of_Amm,Number_Of_Shells) VALUES ('".$CaseNum."','".$Version."','".$Evidence_Collected."','".$Collected_By."','".$Date."','".$Time."','".$Photo."','".$Toxicology_Collected."','".$Blood."','".$Urine."','".$Virteous."','".$Ems_At_Scene."','".$Victim_Seen."','".$Admitted."','".$Attending_PHN."','".$Name_Ph."','".$Number_PH."','".$Medical_History."','".$Diabetes."','".$Medications."','".$Medical_Record_Req."','".$Koda_Notified."','".$Organ_Donate."','".$Tissue_Donate."','".$Cornea_Donate."','".$Police_Dep_Notif."','".$Officer."','".$KY_Marsh_Notif."','".$Osha_Req."','".$Coroners_Inq."','".$Autopsy."','".$Medical_Examiner."','".$Death_Certificate_Signed."','".$Signed_By."','".$Alcohol_Use_Sus."','".$Drug_Use_Sus."','".$Alcohol."','".$Alcohol_Field."','".$Amphe."','".$Amph_Field."','".$Barbitua."','".$Barbituat_field."','".$Benzo."','".$Benzo_field."','".$Cannabinoids."','".$Cannab_Field."','".$Cocaine."','".$Cocaine_Field."','".$Fentanyl."','".$Fent_Field."','".$Methadone."','".$Methadone_Field."','".$Opiates."','".$Opiates_Field."','".$Oxycodone."','".$Oxycodone_Field."','".$Propo."','".$Propo_field."','".$Analgesics."','".$Analgesics_field."','".$Bupren."','".$Bupren_Field."','".$Anticonv."','".$Anti_conv_Field."','".$Antidep."','".$Antdep_field."','".$Antipsycho."','".$Antipsycho_fields."','".$Other."','".$Other_Field."','".$Body_Transported."','".$Cremation."','".$Cremation_Permit."','".$Body_Released_To."','".$Cost_of_Transport."','".$Funeral_Home."','".$Phone_Number_1."','".$Head."','".$Neck."','".$Face."','".$Thorax."','".$Abdo_LB."','".$Spine."','".$Upper_Ex."','".$Lower_Ex."','".$Unknown."','".$Additional_Wounds."','".$Firearm_Type."','".$Firearm_Recov."','".$Casings_Recov."','".$Weapon_NF."','".$Other_Firearm."','".$Firearm_SN."','".$Caliber."','".$Gauge."','".$Firearm_Owner."','".$Firearm_Storage."','".$Gunshot_Residue."','".$Dominant_Hand."','".$Type_of_Amm."','".$Number_Of_Shells."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
