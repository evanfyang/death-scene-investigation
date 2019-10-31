//
//  MDSIProperties.swift
//  MDSI
//
//  Created by Team Awesome on 4/13/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import SearchTextField

struct MDSIDocProperties {
    
    var isPending: Bool = false
    var isPublished: Bool = false
    
    
    //Death Scene Invesitgation
    var CaseNum: UITextField?
    var Coroner_Deputy: SearchTextField?
    var County: UITextField?
    var Date_of_Call: UITextField?
    var Time_of_Call: UITextField?
    var Person_Calling: UITextField?
    var Police_Agency: UITextField?
    var Time_of_Arrival: UITextField?
    var Suspected: UITextField?
    
    //Next of Kin
    var Notified_by: UITextField?
    var Date_Notified: UITextField?
    var Time_Notified: UITextField?
    var Name: UITextField?
    var Relationship: UITextField?
    var Phone_Number: UITextField?
    var Adress: UITextField?
    var City_1: UITextField?
    var State: UITextField?
    var Zip_1: UITextField?
    
    //Decedent Information
    var First_Name: UITextField?
    var Last_Name: UITextField?
    var Gender: UITextField?
    var Age: UITextField?
    var Date_Of_Birth: UITextField?
    var Birth_Place: UITextField?
    var SSN_Num: UITextField?
    var Address: UITextField?
    var City: UITextField?
    var Country_of_Res: UITextField?
    var State_of_Res: UITextField?
    var Zip: UITextField?
    var Height: UITextField?
    var Weight: UITextField?
    var Eyes: UITextField?
    var Hair: UITextField?
    var Race: UITextField?
    var Ethnicity: UITextField?
    var Marital_Status: UITextField?
    var Surving_Spouse: UITextField?
    var Mother_MN: UITextField?
    var Father_N: UITextField?
    var Pregnant: UITextField?
    var Homeless: UITextField?
    var Veteran: UITextField?
    var Retired: UITextField?
    var Active: UITextField?
    var other: UITextField?
    var Branch: UITextField?
    var Last_Tour: UITextField?
    var Education: UITextField?
    var Employment: UITextField?
    var Industry: UITextField?
    var Current_Occupation: UITextField?
    
    //Incident Information
    var Death_Date: UITextField?
    var Death_Time: UITextField?
    var Injury_Date: UITextField?
    var Injury_Time: UITextField?
    var PlaceDeath: UITextField?
    var PlaceInjury: UITextField?
    var LS_Date: UITextField?
    var LS_Time: UITextField?
    var LS_Loc: UITextField?
    var LS_CC: UITextField?
    var DD_Date: UITextField?
    var DD_Time: UITextField?
    var DD_Loc: UITextField?
    var DD_CC: UITextField?
    var Found_Dead_By: UITextField?
    var FDB_Address: UITextField?
    var Last_Seen_Alive: UITextField?
    var LSA_Address: UITextField?
    var Witness: UITextField?
    var Weather: UITextField?
    var Activity: UITextField?
    var Position_Body: UITextField?
    var Livor: UITextField?
    var Rigor: UITextField?
    var Consisent_With_Position: UITextField?
    var Clothed: UITextField?
    var Partially_Clothed: UITextField?
    var Unclothed: UITextField?
    var Dis_Mark: UITextField?
    var Body_Temp: UITextField?
    var Body_Decomp: UITextField?
    var Immed_Cause: UITextField?
    var Due_to: UITextField?
    var Due_to_2: UITextField?
    
    
    //Investigation
    var Evidence_Collected: UITextField?
    var Collected_By: UITextField?
    var Date: UITextField?
    var Time: UITextField?
    var Photo: UISwitch?
    var Toxicology_Collected: UISwitch?
    var Blood: UISwitch?
    var Urine: UISwitch?
    var Virteous: UISwitch?
    var Ems_At_Scene: UISwitch?
    var Victim_Seen: UISwitch?
    var Admitted: UISwitch?
    var Attending_PHN: UISwitch?
    var Name_Ph: UITextField?
    var Number_PH: UITextField?
    var Medical_History: UITextField?
    var Diabetes: UISwitch?
    var Medications: UITextField?
    var Medical_Record_Req: UISwitch?
    var Koda_Notified: UISwitch?
    var Organ_Donate: UISwitch?
    var Tissue_Donate: UISwitch?
    var Cornea_Donate: UISwitch?
    var Police_Dep_Notif: UISwitch?
    var Officer: UITextField?
    var KY_Marsh_Notif: UISwitch?
    var Osha_Req: UISwitch?
    var Coroners_Inq: UISwitch?
    var Autopsy: UISwitch?
    var Medical_Examiner: UITextField?
    var Death_Certificate_Signed: UISwitch?
    var Signed_By: UITextField?
    var Alcohol_Use_Sus: UISwitch?
    var Drug_Use_Sus: UISwitch?
    var Alcohol: UISwitch?
    var Alcohol_Field: SearchTextField?
    var Amphe: UISwitch?
    var Amph_Field: SearchTextField?
    var Barbitua: UISwitch?
    var Barbituat_field: SearchTextField?
    var Benzo: UISwitch?
    var Benzo_field: SearchTextField?
    var Cannabinoids: UISwitch?
    var Cannab_Field: SearchTextField?
    var Cocaine: UISwitch?
    var Cocaine_Field: SearchTextField?
    var Fentanyl: UISwitch?
    var Fent_Field: SearchTextField?
    var Methadone: UISwitch?
    var Methadone_Field: SearchTextField?
    var Opiates: UISwitch?
    var Opiates_Field: SearchTextField?
    var Oxycodone: UISwitch?
    var Oxycodone_Field: SearchTextField?
    var Propo: UISwitch?
    var Propo_field: SearchTextField?
    var Analgesics: UISwitch?
    var Analgesics_field: SearchTextField?
    var Bupren: UISwitch?
    var Bupren_Field: SearchTextField?
    var Anticonv: UISwitch?
    var Anti_conv_Field: SearchTextField?
    var Antidep: UISwitch?
    var Antdep_field: SearchTextField?
    var Antipsycho: UISwitch?
    var Antipsycho_fields: SearchTextField?
    var Other: UISwitch?
    var Other_Field: SearchTextField?
    var Body_Transported: UISwitch?
    var Cremation: UISwitch?
    var Cremation_Permit: UISwitch?
    var Body_Released_To: UITextField?
    var Cost_of_Transport: UITextField?
    var Funeral_Home: UITextField?
    var Phone_Number_1: UITextField?
    var Head: UISwitch?
    var Neck: UISwitch?
    var Face: UISwitch?
    var Thorax: UISwitch?
    var Abdo_LB: UISwitch?
    var Spine: UISwitch?
    var Upper_Ex: UISwitch?
    var Lower_Ex: UISwitch?
    var Unknown: UISwitch?
    var Additional_Wounds: UISwitch?
    var Firearm_Type: UITextField?
    var Firearm_Recov: UITextField?
    var Casings_Recov: UITextField?
    var Weapon_NF: UITextField?
    var Other_Firearm: UITextField?
    var Firearm_SN: UITextField?
    var Caliber: UITextField?
    var Gauge: UITextField?
    var Firearm_Owner: UITextField?
    var Firearm_Storage: UITextField?
    var Gunshot_Residue: UITextField?
    var Dominant_Hand: UITextField?
    var Type_of_Amm: UITextField?
    var Number_Of_Shells: UITextField?
    
    //Case History
    var N_NursingHome: UISwitch?
    var N_SIDS: UISwitch?
    var N_Smoker: UISwitch?
    var N_Diabetes: UISwitch?
    var N_Heart: UISwitch?
    var A_Fall: UISwitch?
    var A_Hunting: UISwitch?
    var A_PlayingWG: UISwitch?
    var A_Load: UISwitch?
    var A_MotorVehicle: UISwitch?
    var A_TargetShooting: UISwitch?
    var A_SelfDefenseShooting: UISwitch?
    var A_ShowingGun: UISwitch?
    var A_CleanGun: UISwitch?
    var A_GunDefect: UISwitch?
    var A_CelebFiring: UISwitch?
    var A_Other: UISwitch?
    var A_MVCrash: UISwitch?
    var A_Passenger: UISwitch?
    var A_Driver: UISwitch?
    var A_Pedestrian: UISwitch?
    var A_LapBeltUsed: UISwitch?
    var A_ShoulderBeltUsed: UISwitch?
    var A_HelmetWorn: UISwitch?
    var A_AirbagDeploy: UISwitch?
    var A_HitRun: UISwitch?
    var A_NonHighway: UISwitch?
    var A_VehicleType: UITextField?
    var S_LCWLTW: UISwitch?
    var S_ALC: UISwitch?
    var S_CDM: UISwitch?
    var S_DMHP: UITextField?
    var S_TMI: UISwitch?
    var S_FP: UISwitch?
    var S_PHP: UISwitch?
    var S_JP: UISwitch?
    var S_LoE: UISwitch?
    var S_RD: UISwitch?
    var S_IPP: UISwitch?
    var S_IPL: UISwitch?
    var S_IPTL: UISwitch?
    var S_IPV: UISwitch?
    var S_ORP: UISwitch?
    var S_SP: UISwitch?
    var S_AP: UISwitch?
    var S_SubP: UISwitch?
    var S_RCP: UISwitch?
    var S_LegP: UISwitch?
    var S_RSRF: UISwitch?
    var S_ODRF: UISwitch?
    var S_PVC: UISwitch?
    var S_VVC: UISwitch?
    var S_Other: UISwitch?
    var S_LSN: UISwitch?
    var S_DADBS: UISwitch?
    var S_HSA: UISwitch?
    var S_ThS: UISwitch?
    var S_Note: UITextField?
    var H_Brawl: UISwitch?
    var H_DrugRel: UISwitch?
    var H_IPL: UISwitch?
    var H_IPTL: UISwitch?
    var H_IPP: UISwitch?
    var H_OtherRel: UISwitch?
    var H_IAC: UISwitch?
    var H_AWAC: UISwitch?
    var H_AOMP: UISwitch?
    var H_GangRel: UISwitch?
    var H_Jealousy: UISwitch?
    var H_JustHom: UISwitch?
    var H_OthAAC: UISwitch?
    var H_HC: UISwitch?
    var H_IB: UISwitch?
    var H_RandoV: UISwitch?
    var H_TerrorA: UISwitch?
    var H_Other: UISwitch?
    var H_MercKill: UISwitch?
    var H_ChildFat: UISwitch?
    var H_InfantIn: UISwitch?
    var H_ChildWitnI: UISwitch?
    var H_ChPSN: UISwitch?
    var H_VWAPOOD: UISwitch?
    var H_ThreatenedHom: UISwitch?
    var H_WhoWasThr: UITextField?
    var H_TheVicis: UITextField?
    var O_DrugPara: UISwitch?
    var O_DrugField: UITextField?
    var O_WitnessPres: UISwitch?
    var O_PrevOver: UISwitch?
    var O_DrugAbuseProb: UISwitch?
    var O_AlcoholAbuseProblem: UISwitch?
    var O_TreatForSubAbu: UISwitch?
    var O_NalOpAnAd: UISwitch?
    var O_ChrPain: UISwitch?
    var O_CurrPainTreat: UISwitch?
    var O_HisIncar: UISwitch?
    var O_CurrIncar: UISwitch?
    var O_RecRel: UISwitch?
    var O_Prev: UISwitch?
    var O_CurrDepMood: UISwitch?
    var O_CurrMenHelProb: UISwitch?
    var O_DiagMenHealthProb: UITextField?
    var O_TreatMenHealth: UISwitch?
    
    //Narrative Comments
    var Narrative_Comments: UITextView?
    
    //Pills on Scene
    /*
    var NameOfDrug: UITextField?
    var DateFilled: UITextField?
    var RxNum: UITextField?
    var NameOnRx: UITextField?
    var Dosing: UITextField?
    var Strength: UITextField?
    var RxQuantity: UITextField?
    var QuantityRemaining: UITextField?
    var PharmName: UITextField?
    var PharmCity: UITextField?
    var Provider: UITextField?
 */
    var PillTable: UITableView?
    
    //Upload Photos
    var UserImage1: UIImageView?
    var UserImage2: UIImageView?
    var UserImage3: UIImageView?
    var UserImage4: UIImageView?
    var UserImage5: UIImageView?
    
    
}
