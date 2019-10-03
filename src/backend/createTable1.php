 <?php
$servername = "statsqltest.as.uky.edu";
$username = "deathrecadmin";
$password = "^YGUG6tqpzpqE6G";
$dbname = "deathrecapp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed " . $conn->connect_error);
}
// sql to create table
$DSIsql = "CREATE TABLE DeathSceneInvestigation (
CaseNum VARCHAR(30),
Coroner_Deputy VARCHAR(30),
County VARCHAR(30),
Date_of_Call VARCHAR(30),
Time_of_Call VARCHAR(30),
Person_Calling VARCHAR(30),
Police_Agency VARCHAR(30),
Time_of_Arrival VARCHAR(30),
Suspected VARCHAR(30)
)";

if ($conn->query($DSIsql) === TRUE) {
    echo "Table Death Scene Investigation created successfully";
} else {
    echo "Error creating table Death Scene Investigation " . $conn->error;
}

$NKsql = "CREATE TABLE NextofKin (
CaseNum VARCHAR(30),
Notified_by VARCHAR(30),
Date_Notified VARCHAR(30),
Time_Notified VARCHAR(30),
Name VARCHAR(30),
Relationship VARCHAR(30),
Phone_Number VARCHAR(30),
Adress VARCHAR(30),
City_1 VARCHAR(30),
State VARCHAR(30),
Zip_1 VARCHAR(30)
)";

if ($conn->query($NKsql) === TRUE) {
    echo "Table Next of Kin created successfully";
} else {
    echo "Error creating table Next of Kin" . $conn->error;
}

$DIsql = "CREATE TABLE DecedentInformation (
CaseNum VARCHAR(30),
First_Name VARCHAR(30),
Last_Name VARCHAR(30),
Gender VARCHAR(30),
Age VARCHAR(30),
Birth_Place VARCHAR(30),
SSN_Num VARCHAR(30),
Address VARCHAR(30),
City VARCHAR(30),
Country_of_Res VARCHAR(30),
State_of_Res VARCHAR(30),
Zip VARCHAR(30),
Height VARCHAR(30),
Weight VARCHAR(30),
Eyes VARCHAR(30),
Hair VARCHAR(30),
Race VARCHAR(30),
Ethnicity VARCHAR(30),
Marital_Status VARCHAR(30),
Surving_Spouse VARCHAR(30),
Mother_MN VARCHAR(30),
Father_N VARCHAR(30),
Pregnant VARCHAR(30),
Homeless VARCHAR(30),
Veteran VARCHAR(30),
Retired VARCHAR(30),
Active VARCHAR(30),
other1 VARCHAR(30),
Branch VARCHAR(30),
Last_Tour VARCHAR(30),
Education VARCHAR(30),
Employment VARCHAR(30),
Industry VARCHAR(30),
Current_Occupation VARCHAR(30)
)";

if ($conn->query($DIsql) === TRUE) {
    echo "Table Decedent Information created successfully";
} else {
    echo "Error creating table Decedent Information" . $conn->error;
}

$IIsql = "CREATE TABLE IncidentInformation (
CaseNum VARCHAR(30),
Death_Date VARCHAR(30),
Death_Time VARCHAR(30),
Injury_Date VARCHAR(30),
Injury_Time VARCHAR(30),
PlaceDeath VARCHAR(30),
PlaceInjury VARCHAR(30),
LS_Date VARCHAR(30),
LS_Time VARCHAR(30),
LS_Loc VARCHAR(30),
LS_CC VARCHAR(30),
DD_Date VARCHAR(30),
DD_Time VARCHAR(30),
DD_Loc VARCHAR(30),
DD_CC VARCHAR(30),
Found_Dead_By VARCHAR(30),
FDB_Address VARCHAR(30),
Last_Seen_Alive VARCHAR(30),
LSA_Address VARCHAR(30),
Witness VARCHAR(30),
Weather VARCHAR(30),
Activity VARCHAR(30),
Position_Body VARCHAR(30),
Livor VARCHAR(30),
Rigor VARCHAR(30),
Consisent_With_Position VARCHAR(30),
Clothed VARCHAR(30),
Partially_Clothed VARCHAR(30),
Unclothed VARCHAR(30),
Dis_Mark VARCHAR(30),
Body_Temp VARCHAR(30),
Body_Decomp VARCHAR(30),
Immed_Cause VARCHAR(30),
Due_to VARCHAR(30),
Due_to_2 VARCHAR(30)
)";

if ($conn->query($IIsql) === TRUE) {
    echo "Table Incident Information created successfully";
} else {
    echo "Error creating table Incident Information" . $conn->error;
}

$Isql = "CREATE TABLE Investigation (
CaseNum VARCHAR(30),
Evidence_Collected VARCHAR(30),
Collected_By VARCHAR(30),
Date VARCHAR(30),
Time VARCHAR(30),
Photo VARCHAR(30),
Toxicology_Collected VARCHAR(30),
Blood VARCHAR(30),
Urine VARCHAR(30),
Virteous VARCHAR(30),
Ems_At_Scene VARCHAR(30),
Victim_Seen VARCHAR(30),
Admitted VARCHAR(30),
Attending_PHN VARCHAR(30),
Name_Ph VARCHAR(30),
Number_PH VARCHAR(30),
Medical_History VARCHAR(30),
Diabetes VARCHAR(30),
Medications VARCHAR(30),
Medical_Record_Req VARCHAR(30),
Koda_Notified VARCHAR(30),
Organ_Donate VARCHAR(30),
Tissue_Donate VARCHAR(30),
Cornea_Donate VARCHAR(30),
Police_Dep_Notif VARCHAR(30),
Officer VARCHAR(30),
KY_Marsh_Notif VARCHAR(30),
Osha_Req VARCHAR(30),
Coroners_Inq VARCHAR(30),
Autopsy VARCHAR(30),
Medical_Examiner VARCHAR(30),
Death_Certificate_Signed VARCHAR(30),
Signed_By VARCHAR(30),
Alcohol_Use_Sus VARCHAR(30),
Drug_Use_Sus VARCHAR(30),
Alcohol VARCHAR(30),
Alcohol_Field VARCHAR(30),
Amphe VARCHAR(30),
Amph_Field VARCHAR(30),
Barbitua VARCHAR(30),
Barbituat_field VARCHAR(30),
Benzo VARCHAR(30),
Benzo_field VARCHAR(30),
Cannabinoids VARCHAR(30),
Cannab_Field VARCHAR(30),
Cocaine VARCHAR(30),
Cocaine_Field VARCHAR(30),
Fentanyl VARCHAR(30),
Fent_Field VARCHAR(30),
Methadone VARCHAR(30),
Methadone_Field VARCHAR(30),
Opiates VARCHAR(30),
Opiates_Field VARCHAR(30),
Oxycodone VARCHAR(30),
Oxycodone_Field VARCHAR(30),
Propo VARCHAR(30),
Propo_field VARCHAR(30),
Analgesics VARCHAR(30),
Analgesics_field VARCHAR(30),
Bupren VARCHAR(30),
Bupren_Field VARCHAR(30),
Anticonv VARCHAR(30),
Anti_conv_Field VARCHAR(30),
Antidep VARCHAR(30),
Antdep_field VARCHAR(30),
Antipsycho VARCHAR(30),
Antipsycho_fields VARCHAR(30),
Other VARCHAR(30),
Other_Field VARCHAR(30),
Body_Transported VARCHAR(30),
Cremation VARCHAR(30),
Cremation_Permit VARCHAR(30),
Body_Released_To VARCHAR (30),
Cost_of_Transport VARCHAR (30),
Funeral_Home VARCHAR (30),
Phone_Number_1 VARCHAR (30),
Head VARCHAR(30),
Neck VARCHAR(30),
Face VARCHAR(30),
Thorax VARCHAR(30),
Abdo_LB VARCHAR(30),
Spine VARCHAR(30),
Upper_Ex VARCHAR(30),
Lower_Ex VARCHAR(30),
Unknown VARCHAR(30),
Additional_Wounds VARCHAR(30),
Firearm_Type VARCHAR(30),
Firearm_Recov VARCHAR(30),
Casings_Recov VARCHAR(30),
Weapon_NF VARCHAR(30),
Other_Firearm VARCHAR(30),
Firearm_SN VARCHAR(30),
Caliber VARCHAR(30),
Gauge VARCHAR(30),
Firearm_Owner VARCHAR(30),
Firearm_Storage VARCHAR(30),
Gunshot_Residue VARCHAR(30),
Dominant_Hand VARCHAR(30),
Type_of_Amm VARCHAR(30),
Number_Of_Shells VARCHAR(30)
)";

if ($conn->query($Isql) === TRUE) {
    echo "Table Investigation created successfully";
} else {
    echo "Error creating table Investigation" . $conn->error;
}

$CHsql = "CREATE TABLE CaseHistory (
CaseNum VARCHAR(30),
N_NursingHome VARCHAR(30),
N_SIDS VARCHAR(30),
N_Smoker VARCHAR(30),
N_Diabetes VARCHAR(30),
N_Heart VARCHAR(30),
A_Fall VARCHAR(30),
A_Hunting VARCHAR(30),
A_PlayingWG VARCHAR(30),
A_Load VARCHAR(30),
A_MotorVehicle VARCHAR(30),
A_TargetShooting VARCHAR(30),
A_SelfDefenseShooting VARCHAR(30),
A_ShowingGun VARCHAR(30),
A_CleanGun VARCHAR(30),
A_GunDefect VARCHAR(30),
A_CelebFiring VARCHAR(30),
A_Other VARCHAR(30),
A_MVCrash VARCHAR(30),
A_Passenger VARCHAR(30),
A_Driver VARCHAR(30),
A_Pedestrian VARCHAR(30),
A_LapBeltUsed VARCHAR(30),
A_ShoulderBeltUsed VARCHAR(30),
A_HelmetWorn VARCHAR(30),
A_AirbagDeploy VARCHAR(30),
A_HitRun VARCHAR(30),
A_NonHighway VARCHAR(30),
A_VehicleType VARCHAR(30),
S_LCWLTW VARCHAR(30),
S_ALC VARCHAR(30),
S_CDM VARCHAR(30),
S_DMHP VARCHAR(30),
S_TMI VARCHAR(30),
S_FP VARCHAR(30),
S_PHP VARCHAR(30),
S_JP VARCHAR(30),
S_LoE VARCHAR(30),
S_RD VARCHAR(30),
S_IPP VARCHAR(30),
S_IPL VARCHAR(30),
S_IPTL VARCHAR(30),
S_IPV VARCHAR(30),
S_ORP VARCHAR(30),
S_SP VARCHAR(30),
S_AP VARCHAR(30),
S_SubP VARCHAR(30),
S_RCP VARCHAR(30),
S_LegP VARCHAR(30),
S_RSRF VARCHAR(30),
S_ODRF VARCHAR(30),
S_PVC VARCHAR(30),
S_VVC VARCHAR(30),
S_Other VARCHAR(30),
S_LSN VARCHAR(30),
S_DADBS VARCHAR(30),
S_HSA VARCHAR(30),
S_ThS VARCHAR(30),
S_Note VARCHAR(30),
H_Brawl VARCHAR(30),
H_DrugRel VARCHAR(30),
H_IPL VARCHAR(30),
H_IPTL VARCHAR(30),
H_IPP VARCHAR(30),
H_OtherRel VARCHAR(30),
H_IAC VARCHAR(30),
H_AWAC VARCHAR(30),
H_AOMP VARCHAR(30),
H_GangRel VARCHAR(30),
H_Jealousy VARCHAR(30),
H_JustHom VARCHAR(30),
H_OthAAC VARCHAR(30),
H_HC VARCHAR(30),
H_IB VARCHAR(30),
H_RandoV VARCHAR(30),
H_TerrorA VARCHAR(30),
H_Other VARCHAR(30),
H_MercKill VARCHAR(30),
H_ChildFat VARCHAR(30),
H_InfantIn VARCHAR(30),
H_ChildWitnI VARCHAR(30),
H_ChPSN VARCHAR(30),
H_VWAPOOD VARCHAR(30),
H_ThreatenedHom VARCHAR(30),
H_WhoWasThr VARCHAR(30),
H_TheVicis VARCHAR(30),
O_DrugPara VARCHAR(30),
O_DrugField VARCHAR(30),
O_WitnessPres VARCHAR(30),
O_PrevOver VARCHAR(30),
O_DrugAbuseProb VARCHAR(30),
O_AlcoholAbuseProblem VARCHAR(30),
O_TreatForSubAbu VARCHAR(30),
O_NalOpAnAd VARCHAR(30),
O_ChrPain VARCHAR(30),
O_CurrPainTreat VARCHAR(30),
O_HisIncar VARCHAR(30),
O_CurrIncar VARCHAR(30),
O_RecRel VARCHAR(30),
O_Prev VARCHAR(30),
O_CurrDepMood VARCHAR(30),
O_CurrMenHelProb VARCHAR(30),
O_DiagMenHealthProb VARCHAR(30),
O_TreatMenHealth VARCHAR(30)
)";

if ($conn->query($CHsql) === TRUE) {
    echo "Table Case History created successfully";
} else {
    echo "Error creating table Case History" . $conn->error;
}

$NCsql = "CREATE TABLE NarrativeComments(
CaseNum VARCHAR(30),
Narrative_Comments VARCHAR (5000)
)";

if ($conn->query($NCsql) === TRUE) {
    echo "Table Narrative Comments created successfully";
} else {
    echo "Error creating table Narrative Comments" . $conn->error;
}


$conn->close();
?> 





