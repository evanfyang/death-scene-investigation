<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits Case History section in database from form
 */

 //TODO: Add fields new to database

// Case History
$CaseNum =$_POST['CaseNum'] ;
$Version=$_POST['Version'] ;
$N_NursingHome =$_POST['N_NursingHome'] ?? '0';
$N_SIDS =$_POST['N_SIDS']  ?? '0';
$N_Smoker =$_POST['N_Smoker']  ?? '0';
$N_Diabetes =$_POST['N_Diabetes']  ?? '0';
$N_Heart =$_POST['N_Heart']  ?? '0';
$A_Fall =$_POST['A_Fall']  ?? '0';
$A_Hunting =$_POST['A_Hunting']  ?? '0';
$A_PlayingWG =$_POST['A_PlayingWG']  ?? '0' ;
$A_Load =$_POST['A_Load']  ?? '0';
$A_MotorVehicle =$_POST['A_MotorVehicle']  ?? '0' ;
$A_TargetShooting =$_POST['A_TargetShooting']  ?? '0';
$A_SelfDefenseShooting =$_POST['A_SelfDefenseShooting']  ?? '0';
$A_ShowingGun =$_POST['A_ShowingGun']  ?? '0';
$A_CleanGun =$_POST['A_CleanGun']  ?? '0';
$A_GunDefect =$_POST['A_GunDefect']  ?? '0';
$A_CelebFiring =$_POST['A_CelebFiring']  ?? '0';
$A_Other =$_POST['A_Other']  ?? '0';
$A_MVCrash =$_POST['A_MVCrash']  ?? '0';
$A_Passenger =$_POST['A_Passenger']  ?? '0';
$A_Driver =$_POST['A_Driver']  ?? '0';
$A_Pedestrian =$_POST['A_Pedestrian']  ?? '0';
$A_LapBeltUsed =$_POST['A_LapBeltUsed']  ?? '0';
$A_ShoulderBeltUsed =$_POST['A_ShoulderBeltUsed']  ?? '0';
$A_HelmetWorn =$_POST['A_HelmetWorn']  ?? '0';
$A_AirbagDeploy =$_POST['A_AirbagDeploy']  ?? '0';
$A_HitRun =$_POST['A_HitRun']  ?? '0';
$A_NonHighway =$_POST['A_NonHighway']  ?? '0';
$A_VehicleType =$_POST['A_VehicleType'];
$S_LCWLTW =$_POST['S_LCWLTW']  ?? '0';
$S_ALC =$_POST['S_ALC']  ?? '0';
$S_CDM =$_POST['S_CDM']  ?? '0';
$S_DMHP_field =$_POST['S_DMHP_field'];
$S_TMI =$_POST['S_TMI']  ?? '0';
$S_FP =$_POST['S_FP']  ?? '0';
$S_PHP =$_POST['S_PHP']  ?? '0';
$S_JP =$_POST['S_JP']  ?? '0';
$S_LoE =$_POST['S_LoE']  ?? '0';
$S_RD =$_POST['S_RD']  ?? '0';
$S_IPP =$_POST['S_IPP']  ?? '0';
$S_IPL =$_POST['S_IPL']  ?? '0';
$S_IPTL =$_POST['S_IPTL']  ?? '0';
$S_IPV =$_POST['S_IPV']  ?? '0';
$S_ORP =$_POST['S_ORP']  ?? '0';
$S_SP =$_POST['S_SP']  ?? '0';
$S_AP =$_POST['S_AP']  ?? '0';
$S_SubP =$_POST['S_SubP']  ?? '0';
$S_RCP =$_POST['S_RCP']  ?? '0';
$S_LegP =$_POST['S_LegP']  ?? '0';
$S_RSRF =$_POST['S_RSRF']  ?? '0';
$S_ODRF =$_POST['S_ODRF']  ?? '0';
$S_PVC =$_POST['S_PVC']  ?? '0';
$S_VVC =$_POST['S_VVC']  ?? '0';
$S_Other =$_POST['S_Other']  ?? '0';
$S_LSN =$_POST['S_LSN']  ?? '0';
$S_DADBS =$_POST['S_DADBS']  ?? '0';
$S_HSA =$_POST['S_HSA']  ?? '0';
$S_ThS =$_POST['S_ThS']  ?? '0';
$S_ThSfield =$_POST['S_ThSfield'];
$S_Note =$_POST['S_Note']  ?? '0';
$H_Brawl =$_POST['H_Brawl']  ?? '0';
$H_DrugRel =$_POST['H_DrugRel']  ?? '0';
$H_IPL =$_POST['H_IPL']  ?? '0';
$H_IPTL =$_POST['H_IPTL']  ?? '0';
$H_IPP =$_POST['H_IPP']  ?? '0';
$H_OtherRel =$_POST['H_OtherRel']  ?? '0';
$H_IAC =$_POST['H_IAC']  ?? '0';
$H_AWAC =$_POST['H_AWAC']  ?? '0';
$H_AOMP =$_POST['H_AOMP']  ?? '0';
$H_GangRel =$_POST['H_GangRel']  ?? '0';
$H_Jealousy =$_POST['H_Jealousy']  ?? '0';
$H_JustHom =$_POST['H_JustHom']  ?? '0';
$H_OthAAC =$_POST['H_OthAAC']  ?? '0';
$H_HC =$_POST['H_HC']  ?? '0';
$H_IB =$_POST['H_IB']  ?? '0';
$H_RandoV =$_POST['H_RandoV']  ?? '0';
$H_TerrorA =$_POST['H_TerrorA']  ?? '0';
$H_Other =$_POST['H_Other']  ?? '0';
$H_MercKill =$_POST['H_MercKill']  ?? '0';
$H_ChildFat =$_POST['H_ChildFat']  ?? '0';
$H_InfantIn =$_POST['H_InfantIn']  ?? '0';
$H_ChildWitnI =$_POST['H_ChildWitnI']  ?? '0';
$H_ChPSN =$_POST['H_ChPSN']  ?? '0';
$H_VWAPOOD =$_POST['H_VWAPOOD']  ?? '0';
$H_ThreatenedHom =$_POST['H_ThreatenedHom']  ?? '0';
$H_WhoWasThr =$_POST['H_WhoWasThr'];
$H_TheVicis =$_POST['H_TheVicis'] ;
$O_DrugPara =$_POST['O_DrugPara']  ?? '0';
$O_DrugField =$_POST['O_DrugField'];
$O_WitnessPres =$_POST['O_WitnessPres']  ?? '0';
$O_PrevOver =$_POST['O_PrevOver']  ?? '0';
$O_DrugAbuseProb =$_POST['O_DrugAbuseProb']  ?? '0';
$O_AlcoholAbuseProblem =$_POST['O_AlcoholAbuseProblem']  ?? '0';
$O_TreatForSubAbu =$_POST['O_TreatForSubAbu']  ?? '0';
$O_NalOpAnAd =$_POST['O_NalOpAnAd']  ?? '0';
$O_ChrPain =$_POST['O_ChrPain']  ?? '0';
$O_CurrPainTreat =$_POST['O_CurrPainTreat']  ?? '0';
$O_HisIncar =$_POST['O_HisIncar']  ?? '0';
$O_CurrIncar =$_POST['O_CurrIncar']  ?? '0';
$O_RecRel =$_POST['O_RecRel']  ?? '0';
$O_Prev =$_POST['O_Prev']  ?? '0';	
$O_CurrDepMood =$_POST['O_CurrDepMood']  ?? '0';
$O_CurrMenHelProb =$_POST['O_CurrMenHelProb']  ?? '0';
$O_DiagMenHealthProb =$_POST['O_DiagMenHealthProb'];
$O_TreatMenHealth=$_POST['O_TreatMenHealth']  ?? '0';

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

// inserts data from app into case history table
$sql = "INSERT INTO CaseHistory (CaseNum,Version, N_NursingHome,N_SIDS,N_Smoker,N_Diabetes,N_Heart,A_Fall,A_Hunting,A_PlayingWG,A_Load,A_MotorVehicle,A_TargetShooting,A_SelfDefenseShooting,A_ShowingGun,A_CleanGun,A_GunDefect,A_CelebFiring,A_Other,A_MVCrash,A_Passenger,A_Driver,A_Pedestrian,A_LapBeltUsed,A_ShoulderBeltUsed,A_HelmetWorn,A_AirbagDeploy,A_HitRun,A_NonHighway,A_VehicleType,S_LCWLTW,S_ALC,S_CDM,S_DMHP_field,S_TMI,S_FP,S_PHP,S_JP,S_LoE,S_RD,S_IPP,S_IPL,S_IPTL,S_IPV,S_ORP,S_SP,S_AP,S_SubP,S_RCP,S_LegP,S_RSRF,S_ODRF,S_PVC,S_VVC,S_Other,S_LSN,S_DADBS,S_HSA,S_ThS,S_ThSfield,S_Note,H_Brawl,H_DrugRel,H_IPL,H_IPTL,H_IPP,H_OtherRel,H_IAC,H_AWAC,H_AOMP,H_GangRel,H_Jealousy,H_JustHom,H_OthAAC,H_HC,H_IB,H_RandoV,H_TerrorA,H_Other,H_MercKill,H_ChildFat,H_InfantIn,H_ChildWitnI,H_ChPSN,H_VWAPOOD,H_ThreatenedHom,H_WhoWasThr,H_TheVicis,O_DrugPara,O_DrugField,O_WitnessPres,O_PrevOver,O_DrugAbuseProb,O_AlcoholAbuseProblem,O_TreatForSubAbu,O_NalOpAnAd,O_ChrPain,O_CurrPainTreat,O_HisIncar,O_CurrIncar,O_RecRel,O_Prev,O_CurrDepMood,O_CurrMenHelProb,O_DiagMenHealthProb,O_TreatMenHealth)VALUES('".$CaseNum."', '".$Version."', '".$N_NursingHome."','".$N_SIDS."','".$N_Smoker."','".$N_Diabetes."','".$N_Heart."','".$A_Fall."','".$A_Hunting."','".$A_PlayingWG."','".$A_Load."','".$A_MotorVehicle."','".$A_TargetShooting."','".$A_SelfDefenseShooting."','".$A_ShowingGun."','".$A_CleanGun."','".$A_GunDefect."','".$A_CelebFiring."','".$A_Other."','".$A_MVCrash."','".$A_Passenger."','".$A_Driver."','".$A_Pedestrian."','".$A_LapBeltUsed."','".$A_ShoulderBeltUsed."','".$A_HelmetWorn."','".$A_AirbagDeploy."','".$A_HitRun."','".$A_NonHighway."','".$A_VehicleType."','".$S_LCWLTW."','".$S_ALC."','".$S_CDM."','".$S_DMHP_field."','".$S_TMI."','".$S_FP."','".$S_PHP."','".$S_JP."','".$S_LoE."','".$S_RD."','".$S_IPP."','".$S_IPL."','".$S_IPTL."','".$S_IPV."','".$S_ORP."','".$S_SP."','".$S_AP."','".$S_SubP."','".$S_RCP."','".$S_LegP."','".$S_RSRF."','".$S_ODRF."','".$S_PVC."','".$S_VVC."','".$S_Other."','".$S_LSN."','".$S_DADBS."','".$S_HSA."','".$S_ThS."','".$S_ThSfield."','".$S_Note."','".$H_Brawl."','".$H_DrugRel."','".$H_IPL."','".$H_IPTL."','".$H_IPP."','".$H_OtherRel."','".$H_IAC."','".$H_AWAC."','".$H_AOMP."','".$H_GangRel."','".$H_Jealousy."','".$H_JustHom."','".$H_OthAAC."','".$H_HC."','".$H_IB."','".$H_RandoV."','".$H_TerrorA."','".$H_Other."','".$H_MercKill."','".$H_ChildFat."','".$H_InfantIn."','".$H_ChildWitnI."','".$H_ChPSN."','".$H_VWAPOOD."','".$H_ThreatenedHom."','".$H_WhoWasThr."','".$H_TheVicis."','".$O_DrugPara."','".$O_DrugField."','".$O_WitnessPres."','".$O_PrevOver."','".$O_DrugAbuseProb."','".$O_AlcoholAbuseProblem."','".$O_TreatForSubAbu."','".$O_NalOpAnAd."','".$O_ChrPain."','".$O_CurrPainTreat."','".$O_HisIncar."','".$O_CurrIncar."','".$O_RecRel."','".$O_Prev."','".$O_CurrDepMood."','".$O_CurrMenHelProb."','".$O_DiagMenHealthProb."','".$O_TreatMenHealth."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
