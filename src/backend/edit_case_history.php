<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

/*
 * Edits Case History section in database from form
 */

 //TODO: Add fields new to database

// Case History
$CaseNum =$_POST['CaseNum'];
$Version=$_POST['Version'];
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
$sql = "INSERT INTO CaseHistory (CaseNum,Version, N_NursingHome,N_SIDS,N_Smoker,N_Diabetes,N_Heart,A_Fall,A_Hunting,A_PlayingWG,A_Load,A_MotorVehicle,A_TargetShooting,A_SelfDefenseShooting,A_ShowingGun,A_CleanGun,A_GunDefect,A_CelebFiring,A_Other,A_MVCrash,A_Passenger,A_Driver,A_Pedestrian,A_LapBeltUsed,A_ShoulderBeltUsed,A_HelmetWorn,A_AirbagDeploy,A_HitRun,A_NonHighway,A_VehicleType,S_LCWLTW,S_ALC,S_CDM,S_DMHP,S_TMI,S_FP,S_PHP,S_JP,S_LoE,S_RD,S_IPP,S_IPL,S_IPTL,S_IPV,S_ORP,S_SP,S_AP,S_SubP,S_RCP,S_LegP,S_RSRF,S_ODRF,S_PVC,S_VVC,S_Other,S_LSN,S_DADBS,S_HSA,S_ThS,S_Note,H_Brawl,H_DrugRel,H_IPL,H_IPTL,H_IPP,H_OtherRel,H_IAC,H_AWAC,H_AOMP,H_GangRel,H_Jealousy,H_JustHom,H_OthAAC,H_HC,H_IB,H_RandoV,H_TerrorA,H_Other,H_MercKill,H_ChildFat,H_InfantIn,H_ChildWitnI,H_ChPSN,H_VWAPOOD,H_ThreatenedHom,H_WhoWasThr,H_TheVicis,O_DrugPara,O_DrugField,O_WitnessPres,O_PrevOver,O_DrugAbuseProb,O_AlcoholAbuseProblem,O_TreatForSubAbu,O_NalOpAnAd,O_ChrPain,O_CurrPainTreat,O_HisIncar,O_CurrIncar,O_RecRel,O_Prev,O_CurrDepMood,O_CurrMenHelProb,O_DiagMenHealthProb,O_TreatMenHealth)VALUES('".$CaseNum."', '".$Version."', '".$N_NursingHome."','".$N_SIDS."','".$N_Smoker."','".$N_Diabetes."','".$N_Heart."','".$A_Fall."','".$A_Hunting."','".$A_PlayingWG."','".$A_Load."','".$A_MotorVehicle."','".$A_TargetShooting."','".$A_SelfDefenseShooting."','".$A_ShowingGun."','".$A_CleanGun."','".$A_GunDefect."','".$A_CelebFiring."','".$A_Other."','".$A_MVCrash."','".$A_Passenger."','".$A_Driver."','".$A_Pedestrian."','".$A_LapBeltUsed."','".$A_ShoulderBeltUsed."','".$A_HelmetWorn."','".$A_AirbagDeploy."','".$A_HitRun."','".$A_NonHighway."','".$A_VehicleType."','".$S_LCWLTW."','".$S_ALC."','".$S_CDM."','".$S_DMHP."','".$S_TMI."','".$S_FP."','".$S_PHP."','".$S_JP."','".$S_LoE."','".$S_RD."','".$S_IPP."','".$S_IPL."','".$S_IPTL."','".$S_IPV."','".$S_ORP."','".$S_SP."','".$S_AP."','".$S_SubP."','".$S_RCP."','".$S_LegP."','".$S_RSRF."','".$S_ODRF."','".$S_PVC."','".$S_VVC."','".$S_Other."','".$S_LSN."','".$S_DADBS."','".$S_HSA."','".$S_ThS."','".$S_Note."','".$H_Brawl."','".$H_DrugRel."','".$H_IPL."','".$H_IPTL."','".$H_IPP."','".$H_OtherRel."','".$H_IAC."','".$H_AWAC."','".$H_AOMP."','".$H_GangRel."','".$H_Jealousy."','".$H_JustHom."','".$H_OthAAC."','".$H_HC."','".$H_IB."','".$H_RandoV."','".$H_TerrorA."','".$H_Other."','".$H_MercKill."','".$H_ChildFat."','".$H_InfantIn."','".$H_ChildWitnI."','".$H_ChPSN."','".$H_VWAPOOD."','".$H_ThreatenedHom."','".$H_WhoWasThr."','".$H_TheVicis."','".$O_DrugPara."','".$O_DrugField."','".$O_WitnessPres."','".$O_PrevOver."','".$O_DrugAbuseProb."','".$O_AlcoholAbuseProblem."','".$O_TreatForSubAbu."','".$O_NalOpAnAd."','".$O_ChrPain."','".$O_CurrPainTreat."','".$O_HisIncar."','".$O_CurrIncar."','".$O_RecRel."','".$O_Prev."','".$O_CurrDepMood."','".$O_CurrMenHelProb."','".$O_DiagMenHealthProb."','".$O_TreatMenHealth."')";

if(!$result = mysqli_query($conn, $sql)) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
