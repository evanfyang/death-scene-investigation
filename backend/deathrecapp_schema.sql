-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: deathrecapp
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CaseHistory`
--

DROP TABLE IF EXISTS `CaseHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CaseHistory` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_NursingHome` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_SIDS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_Smoker` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_Diabetes` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_Heart` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Fall` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Hunting` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_PlayingWG` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Load` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_MotorVehicle` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_TargetShooting` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_SelfDefenseShooting` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_ShowingGun` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_CleanGun` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_GunDefect` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_CelebFiring` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Other` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_MVCrash` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Passenger` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Driver` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Pedestrian` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_LapBeltUsed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_ShoulderBeltUsed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_HelmetWorn` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_AirbagDeploy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_HitRun` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_NonHighway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_VehicleType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_LCWLTW` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_ALC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_CDM` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_DMHP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_TMI` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_FP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_PHP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_JP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_LoE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_RD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_IPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_IPL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_IPTL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_IPV` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_ORP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_SP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_AP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_SubP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_RCP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_LegP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_RSRF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_ODRF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_PVC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_VVC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Other` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_LSN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_DADBS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_HSA` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_ThS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Note` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_Brawl` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_DrugRel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_IPL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_IPTL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_IPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_OtherRel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_IAC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_AWAC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_AOMP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_GangRel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_Jealousy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_JustHom` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_OthAAC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_HC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_IB` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_RandoV` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_TerrorA` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_Other` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_MercKill` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_ChildFat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_InfantIn` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_ChildWitnI` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_ChPSN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_VWAPOOD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_ThreatenedHom` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_WhoWasThr` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_TheVicis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_DrugPara` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_DrugField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_WitnessPres` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_PrevOver` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_DrugAbuseProb` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_AlcoholAbuseProblem` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_TreatForSubAbu` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_NalOpAnAd` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_ChrPain` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_CurrPainTreat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_HisIncar` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_CurrIncar` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_RecRel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_Prev` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_CurrDepMood` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_CurrMenHelProb` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_DiagMenHealthProb` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_TreatMenHealth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DeathSceneInvestigation`
--

DROP TABLE IF EXISTS `DeathSceneInvestigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeathSceneInvestigation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Coroner_Deputy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `County` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_of_Call` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_of_Call` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Person_Calling` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Police_Agency` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_of_Arrival` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Suspected` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DecedentInformation`
--

DROP TABLE IF EXISTS `DecedentInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DecedentInformation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `First_Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Last_Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birth_Place` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SSN_Num` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country_of_Res` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State_of_Res` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Height` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Eyes` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hair` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Race` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ethnicity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marital_Status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surving_Spouse` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mother_MN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Father_N` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pregnant` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Homeless` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Veteran` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Retired` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Branch` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Last_Tour` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Education` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Employment` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Industry` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Current_Occupation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IncidentInformation`
--

DROP TABLE IF EXISTS `IncidentInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncidentInformation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Death_Date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Death_Time` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Injury_Date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Injury_Time` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PlaceDeath` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PlaceInjury` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LS_Date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LS_Time` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LS_Loc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LS_CC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DD_Date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DD_Time` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DD_Loc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DD_CC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Found_Dead_By` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FDB_Address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Last_Seen_Alive` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LSA_Address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Witness` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weather` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Activity` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Position_Body` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Livor` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rigor` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Consisent_With_Position` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clothed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Partially_Clothed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Unclothed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dis_Mark` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Temp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Decomp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Immed_Cause` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Due_to` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Due_to_2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Investigation`
--

DROP TABLE IF EXISTS `Investigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Investigation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evidence_Collected` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Collected_By` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Toxicology_Collected` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Blood` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Urine` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Virteous` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ems_At_Scene` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Victim_Seen` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Admitted` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Attending_PHN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Ph` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number_PH` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medical_History` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Diabetes` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medications` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medical_Record_Req` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Koda_Notified` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Organ_Donate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tissue_Donate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cornea_Donate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Police_Dep_Notif` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Officer` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KY_Marsh_Notif` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Osha_Req` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Coroners_Inq` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Autopsy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medical_Examiner` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Death_Certificate_Signed` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Signed_By` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alcohol_Use_Sus` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Drug_Use_Sus` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alcohol` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alcohol_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amphe` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amph_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barbitua` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barbituat_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Benzo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Benzo_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cannabinoids` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cannab_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cocaine` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cocaine_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fentanyl` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fent_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Methadone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Methadone_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Opiates` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Opiates_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Oxycodone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Oxycodone_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Propo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Propo_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Analgesics` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Analgesics_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bupren` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bupren_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anticonv` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anti_conv_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antidep` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antdep_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antipsycho` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antipsycho_fields` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Other` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Other_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Transported` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cremation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cremation_Permit` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Released_To` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost_of_Transport` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Funeral_Home` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone_Number_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Head` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Neck` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Face` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Thorax` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Abdo_LB` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Spine` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Upper_Ex` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Lower_Ex` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Unknown` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Additional_Wounds` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Recov` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Casings_Recov` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weapon_NF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Other_Firearm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_SN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Caliber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gauge` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Owner` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Storage` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gunshot_Residue` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dominant_Hand` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type_of_Amm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number_Of_Shells` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NarrativeComments`
--

DROP TABLE IF EXISTS `NarrativeComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NarrativeComments` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Narrative_Comments` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NextofKin`
--

DROP TABLE IF EXISTS `NextofKin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NextofKin` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notified_by` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_Notified` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_Notified` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Relationship` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone_Number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Adress` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zip_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `firstTest`
--

DROP TABLE IF EXISTS `firstTest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firstTest` (
  `Narrative_Comments` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secondTest`
--

DROP TABLE IF EXISTS `secondTest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secondTest` (
  `Narrative_Comments` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 10:55:27