-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: deathrecapp
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

--
-- Table structure for table `CaseHistory`
--

--
-- Table structure for table `DeathSceneInvestigation`
--
DROP TABLE IF EXISTS `Investigator`;
CREATE TABLE `Investigator` (
  `Username` varchar(30) COLLATE utf8mb4_unicode_ci PRIMARY KEY NOT NULL,
  `First_Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `DeathSceneInvestigation`;
CREATE TABLE `DeathSceneInvestigation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci PRIMARY KEY NOT NULL,
  `Coroner_Deputy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `County` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_of_Call` DATE DEFAULT NULL,
  `Time_of_Call` TIME DEFAULT NULL,
  `Person_Calling` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Police_Agency` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_of_Arrival` TIME DEFAULT NULL,
  -- suspected cause
  `natural`  BOOL DEFAULT NULL,
  `accident` BOOL DEFAULT NULL,
  `suicide` BOOL DEFAULT NULL,
  `homicide` BOOL DEFAULT NULL,
  `pending` BOOL DEFAULT NULL,
  `undetermined` BOOL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `CaseHistory`;
CREATE TABLE `CaseHistory` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` INT UNSIGNED NOT NULL, 
  `N_NursingHome` BOOL DEFAULT NULL,
  `N_SIDS` BOOL DEFAULT NULL,
  `N_Smoker` BOOL DEFAULT NULL,
  `N_Diabetes` BOOL DEFAULT NULL,
  `N_Heart` BOOL DEFAULT NULL,
  `A_Fall` BOOL DEFAULT NULL,
  `A_Hunting` BOOL DEFAULT NULL,
  `A_PlayingWG` BOOL DEFAULT NULL,
  `A_Load` BOOL DEFAULT NULL,
  `A_MotorVehicle` BOOL DEFAULT NULL,
  `A_TargetShooting` BOOL DEFAULT NULL,
  `A_SelfDefenseShooting` BOOL DEFAULT NULL,
  `A_ShowingGun` BOOL DEFAULT NULL,
  `A_CleanGun` BOOL DEFAULT NULL,
  `A_GunDefect` BOOL DEFAULT NULL,
  `A_CelebFiring` BOOL DEFAULT NULL,
  `A_Other` BOOL DEFAULT NULL,
  `A_MVCrash` BOOL DEFAULT NULL,
  `A_Passenger` BOOL DEFAULT NULL,
  `A_Driver` BOOL DEFAULT NULL,
  `A_Pedestrian` BOOL DEFAULT NULL,
  `A_LapBeltUsed` BOOL DEFAULT NULL,
  `A_ShoulderBeltUsed` BOOL DEFAULT NULL,
  `A_HelmetWorn` BOOL DEFAULT NULL,
  `A_AirbagDeploy` BOOL DEFAULT NULL,
  `A_HitRun` BOOL DEFAULT NULL,
  `A_NonHighway` BOOL DEFAULT NULL,
  `A_VehicleType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_LCWLTW` BOOL DEFAULT NULL,
  `S_ALC` BOOL DEFAULT NULL,
  `S_CDM` BOOL DEFAULT NULL,
  `S_CMHP` BOOL DEFAULT NULL,
  `S_DMHP_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_TMI` BOOL COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_FP` BOOL DEFAULT NULL,
  `S_PHP` BOOL DEFAULT NULL,
  `S_JP` BOOL DEFAULT NULL,
  `S_LoE` BOOL DEFAULT NULL,
  `S_RD` BOOL DEFAULT NULL,
  `S_IPP` BOOL DEFAULT NULL,
  `S_IPL` BOOL DEFAULT NULL,
  `S_IPTL` BOOL DEFAULT NULL,
  `S_IPV` BOOL DEFAULT NULL,
  `S_ORP` BOOL DEFAULT NULL,
  `S_SP` BOOL DEFAULT NULL,
  `S_AP` BOOL DEFAULT NULL,
  `S_SubP` BOOL DEFAULT NULL,
  `S_RCP` BOOL DEFAULT NULL,
  `S_LegP` BOOL DEFAULT NULL,
  `S_RSRF` BOOL DEFAULT NULL,
  `S_ODRF` BOOL DEFAULT NULL,
  `S_PVC` BOOL DEFAULT NULL,
  `S_VVC` BOOL DEFAULT NULL,
  `S_Other` BOOL DEFAULT NULL,
  `S_LSN` BOOL DEFAULT NULL,
  `S_DADBS` BOOL DEFAULT NULL,
  `S_HSA` BOOL DEFAULT NULL,
  `S_ThS` BOOL DEFAULT NULL,
  `S_ThSfield` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Note` BOOL DEFAULT NULL,
  `H_Brawl` BOOL DEFAULT NULL,
  `H_DrugRel` BOOL DEFAULT NULL,
  `H_IPL` BOOL DEFAULT NULL,
  `H_IPTL` BOOL DEFAULT NULL,
  `H_IPP` BOOL DEFAULT NULL,
  `H_OtherRel` BOOL DEFAULT NULL,
  `H_IAC` BOOL DEFAULT NULL,
  `H_AWAC` BOOL DEFAULT NULL,
  `H_AOMP` BOOL DEFAULT NULL,
  `H_GangRel` BOOL DEFAULT NULL,
  `H_Jealousy` BOOL DEFAULT NULL,
  `H_JustHom` BOOL DEFAULT NULL,
  `H_OthAAC` BOOL DEFAULT NULL,
  `H_HC` BOOL DEFAULT NULL,
  `H_IB` BOOL DEFAULT NULL,
  `H_RandoV` BOOL DEFAULT NULL,
  `H_TerrorA` BOOL DEFAULT NULL,
  `H_Other` BOOL DEFAULT NULL,
  `H_MercKill` BOOL DEFAULT NULL,
  `H_ChildFat` BOOL DEFAULT NULL,
  `H_InfantIn` BOOL DEFAULT NULL,
  `H_ChildWitnI` BOOL DEFAULT NULL,
  `H_ChPSN` BOOL DEFAULT NULL,
  `H_VWAPOOD` BOOL DEFAULT NULL,
  `H_ThreatenedHom` BOOL DEFAULT NULL,
  `H_WhoWasThr` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `H_TheVicis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_DrugPara` BOOL DEFAULT NULL,
  `O_DrugField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_WitnessPres` BOOL DEFAULT NULL,
  `O_PrevOver` BOOL DEFAULT NULL,
  `O_DrugAbuseProb` BOOL DEFAULT NULL,
  `O_AlcoholAbuseProblem` BOOL DEFAULT NULL,
  `O_TreatForSubAbu` BOOL DEFAULT NULL,
  `O_NalOpAnAd` BOOL DEFAULT NULL,
  `O_ChrPain` BOOL DEFAULT NULL,
  `O_CurrPainTreat` BOOL DEFAULT NULL,
  `O_HisIncar` BOOL DEFAULT NULL,
  `O_CurrIncar` BOOL DEFAULT NULL,
  `O_RecRel` BOOL DEFAULT NULL,
  `O_Prev` BOOL DEFAULT NULL,
  `O_CurrDepMood` BOOL DEFAULT NULL,
  `O_CurrMenHelProb` BOOL DEFAULT NULL,
  `O_DiagMenHealthProbField` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `O_TreatMenHealth` BOOL DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `DecedentInformation`
--

DROP TABLE IF EXISTS `DecedentInformation`;
CREATE TABLE `DecedentInformation` (
    `CaseNum` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
    `Version` INT UNSIGNED NOT NULL,
    `First_Name` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Last_Name` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Gender` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Age` SMALLINT UNSIGNED DEFAULT NULL,
    `Birth_Place` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `SSN_Num` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Address` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `City` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Country_of_Res` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `State_of_Res` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Zip` VARCHAR(10) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Height` FLOAT UNSIGNED DEFAULT NULL,
    `Weight` FLOAT UNSIGNED DEFAULT NULL,
    `Eyes` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Hair` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `never_married` BOOL DEFAULT NULL,
    `separated` BOOL DEFAULT NULL,
    `divorced` BOOL DEFAULT NULL,
    `married` BOOL DEFAULT NULL,
    `widowed` BOOL DEFAULT NULL,
    `domestic_partnership` BOOL DEFAULT NULL,
    `white` BOOL DEFAULT NULL,
    `black` BOOL DEFAULT NULL,
    `asian` BOOL DEFAULT NULL,
    `American_Indian` BOOL DEFAULT NULL,
    `alaskan_native` BOOL DEFAULT NULL,
    `pacific_islander` BOOL DEFAULT NULL,
    `multiracial` BOOL DEFAULT NULL,
    `unknown` BOOL DEFAULT NULL,
    `Surving_Spouse` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Mother_MN` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Father_N` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Pregnant` BOOL DEFAULT NULL,
    `Homeless` BOOL DEFAULT NULL,
    `Veteran` BOOL DEFAULT NULL,
    `Retired` BOOL DEFAULT NULL,
    `Active` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `other1` BOOL DEFAULT NULL,
    `other_field` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Branch` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Last_Tour` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `hispanic` BOOL DEFAULT NULL,
    `not_of_hisp_orig` BOOL DEFAULT NULL,
    `unknown_race` BOOL DEFAULT NULL,
    `elementary` BOOL DEFAULT NULL,
    `middle` BOOL DEFAULT NULL,
    `jr_high` BOOL DEFAULT NULL,
    `high_school` BOOL DEFAULT NULL,
    `one_yr_coll_tech` BOOL DEFAULT NULL,
    `two_yr_coll` BOOL DEFAULT NULL,
    `three_yr_coll` BOOL DEFAULT NULL,
    `four_yr_coll` BOOL DEFAULT NULL,
    `one_plus_postGrad` BOOL DEFAULT NULL,
    `unknown_edu` BOOL DEFAULT NULL,
    `employed` BOOL DEFAULT NULL,
    `unemployed` BOOL DEFAULT NULL,
    `homemaker` BOOL DEFAULT NULL,
    `volunter` BOOL DEFAULT NULL,
    `retired_empl` BOOL DEFAULT NULL,
    `student` BOOL DEFAULT NULL,
    `disabled` BOOL DEFAULT NULL,
    `other` BOOL DEFAULT NULL,
    `unknown_empl` BOOL DEFAULT NULL,
    `place_of_empl` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Industry` VARCHAR(30) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    `Current_Occupations` VARCHAR(300) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
    PRIMARY KEY (`CaseNum` , `Version`),
    FOREIGN KEY (`CaseNum`)
        REFERENCES `DeathSceneInvestigation` (`CaseNum`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_UNICODE_CI;
--
-- Table structure for table `IncidentInformation`
--

DROP TABLE IF EXISTS `IncidentInformation`;
CREATE TABLE `IncidentInformation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` INT UNSIGNED NOT NULL, 
  `Death_Date` DATE DEFAULT NULL,
  `Death_Time` TIME DEFAULT NULL,
  `Injury_Date` DATE DEFAULT NULL,
  `Injury_Time` TIME DEFAULT NULL,
  -- place of death
  `DOA_death` BOOL DEFAULT NULL,
  `decedents_res_death` BOOL DEFAULT NULL,
  `decedents_work_death` BOOL DEFAULT NULL,
  `inpatient_death` BOOL DEFAULT NULL,
  `ER_outpatient_death` BOOL DEFAULT NULL,
  `nursing_home_death` BOOL DEFAULT NULL,
  `other_field_death` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_of_death` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  -- place of injury
  `DOA_injury` BOOL DEFAULT NULL,
  `decedents_res_injury` BOOL DEFAULT NULL,
  `decedents_work_injury` BOOL DEFAULT NULL,
  `inpatient_injury` BOOL DEFAULT NULL,
  `ER_outpatient_injury` BOOL DEFAULT NULL,
  `nursing_home_injury` BOOL DEFAULT NULL,
  `other_field_injury` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_of_injury` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  
  `LS_Date` DATE DEFAULT NULL,
  `LS_Time` TIME DEFAULT NULL,
  `LS_Loc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LS_CC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DD_Date` DATE DEFAULT NULL,
  `DD_Time` TIME DEFAULT NULL,
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
  `Consisent_With_Position` BOOL DEFAULT NULL,
  `Clothed` BOOL DEFAULT NULL,
  `Partially_Clothed` BOOL DEFAULT NULL,
  `Unclothed` BOOL DEFAULT NULL,
  `Dis_Mark` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Temp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Decomp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Immed_Cause` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Due_to` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Due_to_2` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Investigation`
--
DROP TABLE IF EXISTS `Investigation`;
CREATE TABLE `Investigation` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` INT UNSIGNED NOT NULL, 
  `Evidence_Collected` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Collected_By` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` DATE DEFAULT NULL,
  `Time` TIME DEFAULT NULL,
  `Photo` BOOL DEFAULT NULL,
  `Toxicology_Collected` BOOL DEFAULT NULL,
  `Blood` BOOL DEFAULT NULL,
  `Urine` BOOL DEFAULT NULL,
  `Virteous` BOOL DEFAULT NULL,
  `Ems_At_Scene` BOOL DEFAULT NULL,
  `Victim_Seen` BOOL DEFAULT NULL,
  `Admitted` BOOL DEFAULT NULL,
  `Attending_PHN` BOOL DEFAULT NULL,
  `Name_Ph` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number_PH` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medical_History` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Diabetes` BOOL DEFAULT NULL,
  `Medications` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medical_Record_Req` BOOL DEFAULT NULL,
  `Koda_Notified` BOOL DEFAULT NULL,
  `Organ_Donate` BOOL DEFAULT NULL,
  `Tissue_Donate` BOOL DEFAULT NULL,
  `Cornea_Donate` BOOL DEFAULT NULL,
  `Police_Dep_Notif` BOOL DEFAULT NULL,
  `Officer` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KY_Marsh_Notif` BOOL DEFAULT NULL,
  `Osha_Req` BOOL DEFAULT NULL,
  `Coroners_Inq` BOOL DEFAULT NULL,
  `Autopsy` BOOL DEFAULT NULL,
  `Medical_Examiner` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Death_Certificate_Signed` BOOL DEFAULT NULL,
  `Signed_By` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alcohol_Use_Sus` BOOL DEFAULT NULL,
  `Drug_Use_Sus` BOOL DEFAULT NULL,
  `Alcohol` BOOL DEFAULT NULL,
  `Alcohol_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amphe` BOOL DEFAULT NULL,
  `Amph_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barbitua` BOOL DEFAULT NULL,
  `Barbituat_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Benzo` BOOL DEFAULT NULL,
  `Benzo_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cannabinoids` BOOL DEFAULT NULL,
  `Cannab_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cocaine` BOOL DEFAULT NULL,
  `Cocaine_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fentanyl` BOOL DEFAULT NULL,
  `Fent_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Methadone` BOOL DEFAULT NULL,
  `Methadone_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Opiates` BOOL DEFAULT NULL,
  `Opiates_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Oxycodone` BOOL DEFAULT NULL,
  `Oxycodone_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Propo` BOOL DEFAULT NULL,
  `Propo_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Analgesics` BOOL DEFAULT NULL,
  `Analgesics_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bupren` BOOL DEFAULT NULL,
  `Bupren_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anticonv` BOOL DEFAULT NULL,
  `Anti_conv_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antidep` BOOL DEFAULT NULL,
  `Antdep_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Antipsycho` BOOL DEFAULT NULL,
  `Antipsycho_fields` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Other` BOOL DEFAULT NULL,
  `Other_Field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Body_Transported` BOOL DEFAULT NULL,
  `Cremation` BOOL DEFAULT NULL,
  `Cremation_Permit` BOOL DEFAULT NULL,
  `Body_Released_To` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost_of_Transport` FLOAT DEFAULT NULL,
  `Funeral_Home` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone_Number_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Head` BOOL DEFAULT NULL,
  `Neck` BOOL DEFAULT NULL,
  `Face` BOOL DEFAULT NULL,
  `Thorax` BOOL DEFAULT NULL,
  `Abdo_LB` BOOL DEFAULT NULL,
  `Spine` BOOL DEFAULT NULL,
  `Upper_Ex` BOOL DEFAULT NULL,
  `Lower_Ex` BOOL DEFAULT NULL,
  `Unknown` BOOL DEFAULT NULL,
  `Additional_Wounds` BOOL DEFAULT NULL,
  -- weapon
  -- firearm type
  `handgun` BOOL DEFAULT NULL,
  `handgun_revolver` BOOL DEFAULT NULL,
  `handgun_semiAuto` BOOL DEFAULT NULL,
  `rifle` BOOL DEFAULT NULL,
  `shotgun` BOOL DEFAULT NULL,
  `other_firearm_one` BOOL DEFAULT NULL,
  `non_powder` BOOL DEFAULT NULL,
  `Firearm_Recov` BOOL DEFAULT NULL,
  `Casings_Recov` BOOL DEFAULT NULL,
  -- non-firearm
  `sharp_instr` BOOL DEFAULT NULL,
  `blunt_instr` BOOL DEFAULT NULL,
  `poisoning` BOOL DEFAULT NULL,
  `hangning_strang_suff` BOOL DEFAULT NULL,
  `personal_weaps` BOOL DEFAULT NULL,
  `fall` BOOL DEFAULT NULL,
  `explosive` BOOL DEFAULT NULL,
  `drowning` BOOL DEFAULT NULL,
  `fire` BOOL DEFAULT NULL,
  `shaking` BOOL DEFAULT NULL,
  `motor_vehicle` BOOL DEFAULT NULL,
  `biological_weap` BOOL DEFAULT NULL,
  `other_NF` BOOL DEFAULT NULL,
  `other_NF_field` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  
  `Other_Firearm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_SN` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Caliber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gauge` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Owner` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firearm_Storage` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gunshot_Residue` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dominant_Hand` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type_of_Amm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number_Of_Shells` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `NarrativeComments`
--

DROP TABLE IF EXISTS `NarrativeComments`;
CREATE TABLE `NarrativeComments` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` int NOT NULL, 
  `Narrative_Comments` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `NextofKin`
--

DROP TABLE IF EXISTS `NextofKin`;
CREATE TABLE `NextofKin` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` int NOT NULL, 
  `Notified_by` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_Notified` DATE DEFAULT NULL,
  `Time_Notified` TIME DEFAULT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Relationship` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone_Number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Adress` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zip_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `pills_on_scene`
--
DROP TABLE IF EXISTS `PillsOnScene`;
CREATE TABLE `PillsOnScene` (
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` int NOT NULL, 
   `row_num` TINYINT UNSIGNED AUTO_INCREMENT,
   `name_of_drug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `date_filled` DATE DEFAULT NULL,
   `RX_num` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `name_on_prescrip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `dosing` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `strength` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `quant_prescrip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `quant_remain` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `pharm_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `pharm_city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (`CaseNum`, `Version`), 
   INDEX(row_num),
   FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Table structure for table `firstTest`
--

DROP TABLE IF EXISTS `firstTest`;
CREATE TABLE `firstTest` (
  `Narrative_Comments` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `user` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `secondTest`
--

DROP TABLE IF EXISTS `secondTest`;
CREATE TABLE `secondTest` (
  `Narrative_Comments` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*
---------------------------------------------------------------------------------------------------------------
------------------------------------------- RELATIONSHIPS -----------------------------------------------------
---------------------------------------------------------------------------------------------------------------
*/

DROP TABLE IF EXISTS `assigned_to`;
CREATE TABLE `assigned_to` (
  `Username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL, 
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Username`, `CaseNum`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits`;
CREATE TABLE `edits` (
  `Username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL, 
  `CaseNum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CaseSection` varchar(30) NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Username`, `CaseNum`, `CaseSection`, `Timestamp`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DeathSceneInvestigation`(`CaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*
DROP TABLE IF EXISTS `edits_decedent_information`;
CREATE TABLE `edits_decedent_information` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits_next_of_kin`;
CREATE TABLE `edits_next_of_kin` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits_incident_information`;
CREATE TABLE `edits_decedent_information` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits_investigation`;
CREATE TABLE `edits_decedent_information` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits_narrative_comments`;
CREATE TABLE `edits_decedent_information` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `edits_pills_on_scene`;
CREATE TABLE `edits_decedent_information` (
  `Username` varchar(30) NOT NULL, 
  `CaseNum` varchar(30) NOT NULL,
  `Version` int NOT NULL, 
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP
  PRIMARY KEY (`Username`, `CaseNum`, `Version`), 
  FOREIGN KEY (`Username`) REFERENCES `Investigator`(`Username`),
  FOREIGN KEY (`CaseNum`) REFERENCES `DecedentInformation`(`CaseNum`)
  FOREIGN KEY (`Version`) REFERENCES `DecedentInformaion`(`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/
