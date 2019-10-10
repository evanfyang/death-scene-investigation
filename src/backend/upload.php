<?php
	//$secret = $_POST["secretWord"];
	//if ("^YGUG6tqpzpqE6G" != $secret) exit; // note the same secret as the app - could be let out if this check is not required. secretWord is not entered by the user and is used to prevent unauthorized access to the database
	
	// Death Scene Investigation
	$CaseNum = $_POST['CaseNum'];
	$Coroner_Deputy = $_POST['Coroner_Deputy'];
	$County = $_POST['County'];
	$Date_of_Call = $_POST['Date_of_Call'];
	$Time_of_Call = $_POST['Time_of_Call'];
	$Person_Calling = $_POST['Person_Calling'];
	$Police_Agency = $_POST['Police_Agency'];
	$Time_of_Arrival = $_POST['Time_of_Arrival'];
	$Suspected = $_POST['Suspected'];
	
	// Next of Kin
	$CaseNum = $_POST['CaseNum'];
	$Notified_by = $_POST['Notified_by'];
	$Date_Notified = $_POST['Date_Notified'];
	$Time_Notified = $_POST['Time_Notified'];
	$Name = $_POST['Name'];
	$Relationship = $_POST['Relationship'];
	$Phone_Number = $_POST['Phone_Number'];
	$Adress = $_POST['Adress'];
	$City_1 = $_POST['City_1'];
	$State = $_POST['State'];
	$Zip_1 = $_POST['Zip_1'];
	
	// Decedent Information
	$CaseNum=$_POST['CaseNum'];
	$First_Name=$_POST['First_Name'];
	$Last_Name=$_POST['Last_Name'];
	$Gender=$_POST['Gender'];
	$Age=$_POST['Age'];
	$Birth_Place=$_POST['Birth_Place'];
	$SSN_Num=$_POST['SSN_Num'];
	$Address=$_POST['Address'];
	$City=$_POST['City'];
	$Country_of_Res=$_POST['Country_of_Res'];
	$State_of_Res=$_POST['State_of_Res'];
	$Zip=$_POST['Zip'];
	$Height=$_POST['Height'];
	$Weight=$_POST['Weight'];
	$Eyes=$_POST['Eyes'];
	$Hair=$_POST['Hair'];
	$Race=$_POST['Race'];
	$Ethnicity=$_POST['Ethnicity'];
	$Marital_Status=$_POST['Marital_Status'];
	$Surving_Spouse=$_POST['Surving_Spouse'];
	$Mother_MN=$_POST['Mother_MN'];
	$Father_N=$_POST['Father_N'];
	$Pregnant=$_POST['Pregnant'];
	$Homeless=$_POST['Homeless'];
	$Veteran=$_POST['Veteran'];
	$Retired=$_POST['Retired'];
	$Active=$_POST['Active'];
	$other1=$_POST['other1'];
	$Branch=$_POST['Branch'];
	$Last_Tour=$_POST['Last_Tour'];
	$Education=$_POST['Education'];
	$Employment=$_POST['Employment'];
	$Industry=$_POST['Industry'];
	$Current_Occupation=$_POST['Current_Occupation'];
	
	// Incident Information
	$CaseNum=$_POST['CaseNum'];
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


	
	// Investigation
	$CaseNum=$_POST['CaseNum'];	
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

	
	// Case History
	$CaseNum =$_POST['CaseNum'];
	$N_NursingHome =$_POST['N_NursingHome'];
	$N_SIDS =$_POST['N_SIDS'];
	$N_Smoker =$_POST['N_Smoker'];
	$N_Diabetes =$_POST['N_Diabetes'];
	$N_Heart =$_POST['N_Heart'];
	$A_Fall =$_POST['A_Fall'];
	$A_Hunting =$_POST['A_Hunting'];
	$A_PlayingWG =$_POST['A_PlayingWG'];
	$A_Load =$_POST['A_Load'];
	$A_MotorVehicle =$_POST['A_MotorVehicle'];
	$A_TargetShooting =$_POST['A_TargetShooting'];
	$A_SelfDefenseShooting =$_POST['A_SelfDefenseShooting'];
	$A_ShowingGun =$_POST['A_ShowingGun'];
	$A_CleanGun =$_POST['A_CleanGun'];
	$A_GunDefect =$_POST['A_GunDefect'];
	$A_CelebFiring =$_POST['A_CelebFiring'];
	$A_Other =$_POST['A_Other'];
	$A_MVCrash =$_POST['A_MVCrash'];
	$A_Passenger =$_POST['A_Passenger'];
	$A_Driver =$_POST['A_Driver'];
	$A_Pedestrian =$_POST['A_Pedestrian'];
	$A_LapBeltUsed =$_POST['A_LapBeltUsed'];
	$A_ShoulderBeltUsed =$_POST['A_ShoulderBeltUsed'];
	$A_HelmetWorn =$_POST['A_HelmetWorn'];
	$A_AirbagDeploy =$_POST['A_AirbagDeploy'];
	$A_HitRun =$_POST['A_HitRun'];
	$A_NonHighway =$_POST['A_NonHighway'];
	$A_VehicleType =$_POST['A_VehicleType'];
	$S_LCWLTW =$_POST['S_LCWLTW'];
	$S_ALC =$_POST['S_ALC'];
	$S_CDM =$_POST['S_CDM'];
	$S_DMHP =$_POST['S_DMHP'];
	$S_TMI =$_POST['S_TMI'];
	$S_FP =$_POST['S_FP'];
	$S_PHP =$_POST['S_PHP'];
	$S_JP =$_POST['S_JP'];
	$S_LoE =$_POST['S_LoE'];
	$S_RD =$_POST['S_RD'];
	$S_IPP =$_POST['S_IPP'];
	$S_IPL =$_POST['S_IPL'];
	$S_IPTL =$_POST['S_IPTL'];
	$S_IPV =$_POST['S_IPV'];
	$S_ORP =$_POST['S_ORP'];
	$S_SP =$_POST['S_SP'];
	$S_AP =$_POST['S_AP'];
	$S_SubP =$_POST['S_SubP'];
	$S_RCP =$_POST['S_RCP'];
	$S_LegP =$_POST['S_LegP'];
	$S_RSRF =$_POST['S_RSRF'];
	$S_ODRF =$_POST['S_ODRF'];
	$S_PVC =$_POST['S_PVC'];
	$S_VVC =$_POST['S_VVC'];
	$S_Other =$_POST['S_Other'];
	$S_LSN =$_POST['S_LSN'];
	$S_DADBS =$_POST['S_DADBS'];
	$S_HSA =$_POST['S_HSA'];
	$S_ThS =$_POST['S_ThS'];
	$S_Note =$_POST['S_Note'];
	$H_Brawl =$_POST['H_Brawl'];
	$H_DrugRel =$_POST['H_DrugRel'];
	$H_IPL =$_POST['H_IPL'];
	$H_IPTL =$_POST['H_IPTL'];
	$H_IPP =$_POST['H_IPP'];
	$H_OtherRel =$_POST['H_OtherRel'];
	$H_IAC =$_POST['H_IAC'];
	$H_AWAC =$_POST['H_AWAC'];
	$H_AOMP =$_POST['H_AOMP'];
	$H_GangRel =$_POST['H_GangRel'];
	$H_Jealousy =$_POST['H_Jealousy'];
	$H_JustHom =$_POST['H_JustHom'];
	$H_OthAAC =$_POST['H_OthAAC'];
	$H_HC =$_POST['H_HC'];
	$H_IB =$_POST['H_IB'];
	$H_RandoV =$_POST['H_RandoV'];
	$H_TerrorA =$_POST['H_TerrorA'];
	$H_Other =$_POST['H_Other'];
	$H_MercKill =$_POST['H_MercKill'];
	$H_ChildFat =$_POST['H_ChildFat'];
	$H_InfantIn =$_POST['H_InfantIn'];
	$H_ChildWitnI =$_POST['H_ChildWitnI'];
	$H_ChPSN =$_POST['H_ChPSN'];
	$H_VWAPOOD =$_POST['H_VWAPOOD'];
	$H_ThreatenedHom =$_POST['H_ThreatenedHom'];
	$H_WhoWasThr =$_POST['H_WhoWasThr'];
	$H_TheVicis =$_POST['H_TheVicis'];
	$O_DrugPara =$_POST['O_DrugPara'];
	$O_DrugField =$_POST['O_DrugField'];
	$O_WitnessPres =$_POST['O_WitnessPres'];
	$O_PrevOver =$_POST['O_PrevOver'];
	$O_DrugAbuseProb =$_POST['O_DrugAbuseProb'];
	$O_AlcoholAbuseProblem =$_POST['O_AlcoholAbuseProblem'];
	$O_TreatForSubAbu =$_POST['O_TreatForSubAbu'];
	$O_NalOpAnAd =$_POST['O_NalOpAnAd'];
	$O_ChrPain =$_POST['O_ChrPain'];
	$O_CurrPainTreat =$_POST['O_CurrPainTreat'];
	$O_HisIncar =$_POST['O_HisIncar'];
	$O_CurrIncar =$_POST['O_CurrIncar'];
	$O_RecRel =$_POST['O_RecRel'];
	$O_Prev =$_POST['O_Prev'];
	$O_CurrDepMood =$_POST['O_CurrDepMood'];
	$O_CurrMenHelProb =$_POST['O_CurrMenHelProb'];
	$O_DiagMenHealthProb =$_POST['O_DiagMenHealthProb'];
	$O_TreatMenHealth=$_POST['O_TreatMenHealth'];
	
	// Narrative Comments
	$Narrative_Comments=$_POST['Narrative_Comments'];


// POST items should be checked for bad information before being added to the database.

// Create connection
	$mysqli=mysqli_connect("statsqltest.as.uky.edu","deathrecadmin","^YGUG6tqpzpqE6G","deathrecapp"); // localhost, user name, user password, database name
 
// Check connection
	if (mysqli_connect_errno())
	{
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	
	$DSIquery = "INSERT INTO DeathSceneInvestigation (CaseNum, Coroner_Deputy, County, Date_of_Call, Time_of_Call, Person_Calling, Police_Agency, Time_of_Arrival, Suspected) VALUES ('".$CaseNum."','".$Coroner_Deputy."','".$County."','".$Date_of_Call."','".$Time_of_Call."','".$Person_Calling."','".$Police_Agency."','".$Time_of_Arrival."','".$Suspected."')";
	$result = mysqli_query($mysqli,$DSIquery);
	
	$NKquery = "INSERT INTO NextofKin (CaseNum, Notified_by, Date_Notified, Time_Notified, Name, Relationship, Phone_Number, Adress, City_1, State, Zip_1) VALUES ('".$CaseNum."','".$Notified_by."','".$Date_Notified."','".$Time_Notified."','".$Name."','".$Relationship."','".$Phone_Number."','".$Adress."','".$City_1."','".$State."','".$Zip_1."')";
	$result = mysqli_query($mysqli,$NKquery);
	
	$DIquery = "INSERT INTO DecedentInformation (CaseNum, First_Name, Last_Name, Gender, Age, Birth_Place, SSN_Num, Address, City, Country_of_Res, State_of_Res, Zip, Height, Weight, Eyes, Hair, Race, Ethnicity, Marital_Status, Surving_Spouse, Mother_MN, Father_N, Pregnant, Homeless, Veteran, Retired, Active, other1, Branch, Last_Tour, Education, Employment, Industry, Current_Occupation) VALUES ('".$CaseNum."','".$First_Name."','".$Last_Name."','".$Gender."','".$Age."','".$Birth_Place."','".$SSN_Num."','".$Address."','".$City."','".$Country_of_Res."','".$State_of_Res."','".$Zip."','".$Height."','".$Weight."','".$Eyes."','".$Hair."','".$Race."','".$Ethnicity."','".$Marital_Status."','".$Surving_Spouse."','".$Mother_MN."','".$Father_N."','".$Pregnant."','".$Homeless."','".$Veteran."','".$Retired."','".$Active."','".$other1."','".$Branch."','".$Last_Tour."','".$Education."','".$Employment."','".$Industry."','".$Current_Occupation."')";
	$result = mysqli_query($mysqli, $DIquery);
	
	$IIquery = "INSERT INTO IncidentInformation (CaseNum,Death_Date,Death_Time,Injury_Date,Injury_Time,PlaceDeath,PlaceInjury,LS_Date,LS_Time,LS_Loc,LS_CC,DD_Date,DD_Time,DD_Loc,DD_CC,Found_Dead_By,FDB_Address,Last_Seen_Alive,LSA_Address,Witness,Weather,Activity,Position_Body,Livor,Rigor,Consisent_With_Position,Clothed,Partially_Clothed,Unclothed,Dis_Mark,Body_Temp,Body_Decomp,Immed_Cause,Due_to,Due_to_2) VALUES ('".$CaseNum."','".$Death_Date."','".$Death_Time."','".$Injury_Date."','".$Injury_Time."','".$PlaceDeath."','".$PlaceInjury."','".$LS_Date."','".$LS_Time."','".$LS_Loc."','".$LS_CC."','".$DD_Date."','".$DD_Time."','".$DD_Loc."','".$DD_CC."','".$Found_Dead_By."','".$FDB_Address."','".$Last_Seen_Alive."','".$LSA_Address."','".$Witness."','".$Weather."','".$Activity."','".$Position_Body."','".$Livor."','".$Rigor."','".$Consisent_With_Position."','".$Clothed."','".$Partially_Clothed."','".$Unclothed."','".$Dis_Mark."','".$Body_Temp."','".$Body_Decomp."','".$Immed_Cause."','".$Due_to."','".$Due_to_2."')";
	$result = mysqli_query($mysqli, $IIquery);

	$Iquery = "INSERT INTO Investigation (CaseNum,Evidence_Collected,Collected_By,Date,Time,Photo,Toxicology_Collected,Blood,Urine,Virteous,Ems_At_Scene,Victim_Seen,Admitted,Attending_PHN,Name_Ph,Number_PH,Medical_History,Diabetes,Medications,Medical_Record_Req,Koda_Notified,Organ_Donate,Tissue_Donate,Cornea_Donate,Police_Dep_Notif,Officer,KY_Marsh_Notif,Osha_Req,Coroners_Inq,Autopsy,Medical_Examiner,Death_Certificate_Signed,Signed_By,Alcohol_Use_Sus,Drug_Use_Sus,Alcohol,Alcohol_Field,Amphe,Amph_Field,Barbitua,Barbituat_field,Benzo,Benzo_field,Cannabinoids,Cannab_Field,Cocaine,Cocaine_Field,Fentanyl,Fent_Field,Methadone,Methadone_Field,Opiates,Opiates_Field,Oxycodone,Oxycodone_Field,Propo,Propo_field,Analgesics,Analgesics_field,Bupren,Bupren_Field,Anticonv,Anti_conv_Field,Antidep,Antdep_field,Antipsycho,Antipsycho_fields,Other,Other_Field,Body_Transported,Cremation,Cremation_Permit,Body_Released_To,Cost_of_Transport,Funeral_Home,Phone_Number_1,Head,Neck,Face,Thorax,Abdo_LB,Spine,Upper_Ex,Lower_Ex,Unknown,Additional_Wounds,Firearm_Type,Firearm_Recov,Casings_Recov,Weapon_NF,Other_Firearm,Firearm_SN,Caliber,Gauge,Firearm_Owner,Firearm_Storage,Gunshot_Residue,Dominant_Hand,Type_of_Amm,Number_Of_Shells) VALUES ('".$CaseNum."','".$Evidence_Collected."','".$Collected_By."','".$Date."','".$Time."','".$Photo."','".$Toxicology_Collected."','".$Blood."','".$Urine."','".$Virteous."','".$Ems_At_Scene."','".$Victim_Seen."','".$Admitted."','".$Attending_PHN."','".$Name_Ph."','".$Number_PH."','".$Medical_History."','".$Diabetes."','".$Medications."','".$Medical_Record_Req."','".$Koda_Notified."','".$Organ_Donate."','".$Tissue_Donate."','".$Cornea_Donate."','".$Police_Dep_Notif."','".$Officer."','".$KY_Marsh_Notif."','".$Osha_Req."','".$Coroners_Inq."','".$Autopsy."','".$Medical_Examiner."','".$Death_Certificate_Signed."','".$Signed_By."','".$Alcohol_Use_Sus."','".$Drug_Use_Sus."','".$Alcohol."','".$Alcohol_Field."','".$Amphe."','".$Amph_Field."','".$Barbitua."','".$Barbituat_field."','".$Benzo."','".$Benzo_field."','".$Cannabinoids."','".$Cannab_Field."','".$Cocaine."','".$Cocaine_Field."','".$Fentanyl."','".$Fent_Field."','".$Methadone."','".$Methadone_Field."','".$Opiates."','".$Opiates_Field."','".$Oxycodone."','".$Oxycodone_Field."','".$Propo."','".$Propo_field."','".$Analgesics."','".$Analgesics_field."','".$Bupren."','".$Bupren_Field."','".$Anticonv."','".$Anti_conv_Field."','".$Antidep."','".$Antdep_field."','".$Antipsycho."','".$Antipsycho_fields."','".$Other."','".$Other_Field."','".$Body_Transported."','".$Cremation."','".$Cremation_Permit."','".$Body_Released_To."','".$Cost_of_Transport."','".$Funeral_Home."','".$Phone_Number_1."','".$Head."','".$Neck."','".$Face."','".$Thorax."','".$Abdo_LB."','".$Spine."','".$Upper_Ex."','".$Lower_Ex."','".$Unknown."','".$Additional_Wounds."','".$Firearm_Type."','".$Firearm_Recov."','".$Casings_Recov."','".$Weapon_NF."','".$Other_Firearm."','".$Firearm_SN."','".$Caliber."','".$Gauge."','".$Firearm_Owner."','".$Firearm_Storage."','".$Gunshot_Residue."','".$Dominant_Hand."','".$Type_of_Amm."','".$Number_Of_Shells."')";
	$result = mysqli_query($mysqli, $Iquery);

	$CHquery = "INSERT INTO CaseHistory (CaseNum,N_NursingHome,N_SIDS,N_Smoker,N_Diabetes,N_Heart,A_Fall,A_Hunting,A_PlayingWG,A_Load,A_MotorVehicle,A_TargetShooting,A_SelfDefenseShooting,A_ShowingGun,A_CleanGun,A_GunDefect,A_CelebFiring,A_Other,A_MVCrash,A_Passenger,A_Driver,A_Pedestrian,A_LapBeltUsed,A_ShoulderBeltUsed,A_HelmetWorn,A_AirbagDeploy,A_HitRun,A_NonHighway,A_VehicleType,S_LCWLTW,S_ALC,S_CDM,S_DMHP,S_TMI,S_FP,S_PHP,S_JP,S_LoE,S_RD,S_IPP,S_IPL,S_IPTL,S_IPV,S_ORP,S_SP,S_AP,S_SubP,S_RCP,S_LegP,S_RSRF,S_ODRF,S_PVC,S_VVC,S_Other,S_LSN,S_DADBS,S_HSA,S_ThS,S_Note,H_Brawl,H_DrugRel,H_IPL,H_IPTL,H_IPP,H_OtherRel,H_IAC,H_AWAC,H_AOMP,H_GangRel,H_Jealousy,H_JustHom,H_OthAAC,H_HC,H_IB,H_RandoV,H_TerrorA,H_Other,H_MercKill,H_ChildFat,H_InfantIn,H_ChildWitnI,H_ChPSN,H_VWAPOOD,H_ThreatenedHom,H_WhoWasThr,H_TheVicis,O_DrugPara,O_DrugField,O_WitnessPres,O_PrevOver,O_DrugAbuseProb,O_AlcoholAbuseProblem,O_TreatForSubAbu,O_NalOpAnAd,O_ChrPain,O_CurrPainTreat,O_HisIncar,O_CurrIncar,O_RecRel,O_Prev,O_CurrDepMood,O_CurrMenHelProb,O_DiagMenHealthProb,O_TreatMenHealth)VALUES('".$CaseNum."','".$N_NursingHome."','".$N_SIDS."','".$N_Smoker."','".$N_Diabetes."','".$N_Heart."','".$A_Fall."','".$A_Hunting."','".$A_PlayingWG."','".$A_Load."','".$A_MotorVehicle."','".$A_TargetShooting."','".$A_SelfDefenseShooting."','".$A_ShowingGun."','".$A_CleanGun."','".$A_GunDefect."','".$A_CelebFiring."','".$A_Other."','".$A_MVCrash."','".$A_Passenger."','".$A_Driver."','".$A_Pedestrian."','".$A_LapBeltUsed."','".$A_ShoulderBeltUsed."','".$A_HelmetWorn."','".$A_AirbagDeploy."','".$A_HitRun."','".$A_NonHighway."','".$A_VehicleType."','".$S_LCWLTW."','".$S_ALC."','".$S_CDM."','".$S_DMHP."','".$S_TMI."','".$S_FP."','".$S_PHP."','".$S_JP."','".$S_LoE."','".$S_RD."','".$S_IPP."','".$S_IPL."','".$S_IPTL."','".$S_IPV."','".$S_ORP."','".$S_SP."','".$S_AP."','".$S_SubP."','".$S_RCP."','".$S_LegP."','".$S_RSRF."','".$S_ODRF."','".$S_PVC."','".$S_VVC."','".$S_Other."','".$S_LSN."','".$S_DADBS."','".$S_HSA."','".$S_ThS."','".$S_Note."','".$H_Brawl."','".$H_DrugRel."','".$H_IPL."','".$H_IPTL."','".$H_IPP."','".$H_OtherRel."','".$H_IAC."','".$H_AWAC."','".$H_AOMP."','".$H_GangRel."','".$H_Jealousy."','".$H_JustHom."','".$H_OthAAC."','".$H_HC."','".$H_IB."','".$H_RandoV."','".$H_TerrorA."','".$H_Other."','".$H_MercKill."','".$H_ChildFat."','".$H_InfantIn."','".$H_ChildWitnI."','".$H_ChPSN."','".$H_VWAPOOD."','".$H_ThreatenedHom."','".$H_WhoWasThr."','".$H_TheVicis."','".$O_DrugPara."','".$O_DrugField."','".$O_WitnessPres."','".$O_PrevOver."','".$O_DrugAbuseProb."','".$O_AlcoholAbuseProblem."','".$O_TreatForSubAbu."','".$O_NalOpAnAd."','".$O_ChrPain."','".$O_CurrPainTreat."','".$O_HisIncar."','".$O_CurrIncar."','".$O_RecRel."','".$O_Prev."','".$O_CurrDepMood."','".$O_CurrMenHelProb."','".$O_DiagMenHealthProb."','".$O_TreatMenHealth."')";
	$result = mysqli_query($mysqli, $CHquery);

	$NCquery = "INSERT INTO NarrativeComments (CaseNum, Narrative_Comments) VALUES ('".$CaseNum."','".$Narrative_Comments."')";
	$result = mysqli_query($mysqli, $NCquery);
	

?>

