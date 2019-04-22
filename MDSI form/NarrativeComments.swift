//
//  NarrativeComments.swift
//  MDSI form
//
//  Created by Team Awesome on 3/28/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Narative_Comments: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var Narrative_Comments: UITextView!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    @IBAction func UploadData(_ sender: UIButton) {
        
        let url = NSURL(string: "https://statsqltest.as.uky.edu/upload.php") // Location of Database
        var request = URLRequest(url : url! as URL)
        request.httpMethod = "POST"
        
        var dataString = "secretWord=^YGUG6tqpzpqE6G" // starting POST string with a secret Word
        
        // the POST string has entries separated by &
        
/*
        
        dataString = dataString + "&CaseNum=\(allVar.CaseNum!.text!)"
        dataString = dataString + "&Coroner_Deputy=\(allVar.Coroner_Deputy!.text!)"
        dataString = dataString + "&County=\(allVar.County!.text!)"
        dataString = dataString + "&Date_of_Call=\(allVar.Date_of_Call!.text!)"
        dataString = dataString + "&Time_of_Call=\(allVar.Time_of_Call!.text!)"
        dataString = dataString + "&Person_Calling=\(allVar.Person_Calling!.text!)"
        dataString = dataString + "&Police_Agency=\(allVar.Police_Agency!.text!)"
        dataString = dataString + "&Time_of_Arrival=\(allVar.Time_of_Arrival!.text!)"
        dataString = dataString + "&Suspected=\(allVar.Suspected!.text!)"
        dataString = dataString + "&Notified_by=\(allVar.Notified_by!.text!)"
        dataString = dataString + "&Date_Notified=\(allVar.Date_Notified!.text!)"
        dataString = dataString + "&Time_Notified=\(allVar.Time_Notified!.text!)"
        dataString = dataString + "&Name=\(allVar.Name!.text!)"
        dataString = dataString + "&Relationship=\(allVar.Relationship!.text!)"
        dataString = dataString + "&Phone_Number=\(allVar.Phone_Number!.text!)"
        dataString = dataString + "&Adress=\(allVar.Adress!.text!)"
        dataString = dataString + "&City_1=\(allVar.City_1!.text!)"
        dataString = dataString + "&State=\(allVar.State!.text!)"
        dataString = dataString + "&Zip_1=\(allVar.Zip_1!.text!)"
        dataString = dataString + "&First_Name=\(String(describing: allVar.First_Name?.text!))"
        dataString = dataString + "&Last_Name=\(allVar.Last_Name!.text!)"
        dataString = dataString + "&Gender=\(allVar.Gender!.text!)"
        dataString = dataString + "&Age=\(allVar.Age!.text!)"
        dataString = dataString + "&Birth_Place=\(allVar.Birth_Place!.text!)"
        dataString = dataString + "&SSN_Num=\(allVar.SSN_Num!.text!)"
        dataString = dataString + "&Address=\(allVar.Address!.text!)"
        dataString = dataString + "&City=\(allVar.City!.text!)"
        dataString = dataString + "&County_of_Res=\(allVar.Country_of_Res!.text!)"
        dataString = dataString + "&State_of_Res=\(allVar.State_of_Res!.text!)"
        dataString = dataString + "&Zip=\(allVar.Zip!.text!)"
        dataString = dataString + "&Height=\(String(describing: allVar.Height?.text!))"
        dataString = dataString + "&Weight=\(allVar.Weight?.text!)"
        dataString = dataString + "&Eyes=\(allVar.Eyes?.text!)"
        dataString = dataString + "&Hair=\(allVar.Hair?.text!)"
        dataString = dataString + "&Race=\(allVar.Race?.text!)"
        dataString = dataString + "&Ethnicity=\(allVar.Ethnicity?.text!)"
        dataString = dataString + "&Marital_Status=\(allVar.Marital_Status?.text!)"
        dataString = dataString + "&Surving_Spouse=\(allVar.Surving_Spouse?.text!)"
        dataString = dataString + "&Mother_MN=\(allVar.Mother_MN?.text!)"
        dataString = dataString + "&Father_N=\(allVar.Father_N?.text!)"
        dataString = dataString + "&Pregnant=\(allVar.Pregnant?.text!)"
        dataString = dataString + "&Homeless=\(allVar.Homeless?.text!)"
        dataString = dataString + "&Veteran=\(allVar.Veteran?.text!)"
        dataString = dataString + "&Retired=\(allVar.Retired?.text!)"
        dataString = dataString + "&Active=\(allVar.Active?.text!)"
        dataString = dataString + "&other1=\(allVar.other?.text!)"
        dataString = dataString + "&Branch=\(allVar.Branch?.text!)"
        dataString = dataString + "&Last_Tour=\(allVar.Last_Tour?.text!)"
        dataString = dataString + "&Education=\(allVar.Education?.text!)"
        dataString = dataString + "&Employment=\(allVar.Employment?.text!)"
        dataString = dataString + "&Industry=\(allVar.Industry?.text!)"
        dataString = dataString + "&Current_Occupation=\(allVar.Current_Occupation?.text!)"
        dataString = dataString + "&Death_Date=\(allVar.Death_Date?.text!)"
        dataString = dataString + "&Death_Time=\(allVar.Death_Time?.text!)"
        dataString = dataString + "&Injury_Time=\(allVar.Injury_Time?.text!)"
        dataString = dataString + "&PlaceDeath=\(allVar.PlaceDeath?.text!)"
        dataString = dataString + "&PlaceInjury=\(allVar.PlaceInjury?.text!)"
        dataString = dataString + "&LS_Date=\(allVar.LS_Date?.text!)"
        dataString = dataString + "&LS_Time=\(allVar.LS_Time?.text!)"
        dataString = dataString + "&LS_Loc=\(allVar.LS_Loc?.text!)"
        dataString = dataString + "&LS_CC=\(allVar.LS_CC?.text!)"
        dataString = dataString + "&DD_Date=\(allVar.DD_Date?.text!)"
        dataString = dataString + "&DD_Time=\(allVar.DD_Time?.text!)"
        dataString = dataString + "&DD_Loc=\(allVar.DD_Loc?.text!)"
        dataString = dataString + "&DD_CC=\(allVar.DD_CC?.text!)"
        dataString = dataString + "&Found_Dead_By=\(allVar.Found_Dead_By?.text!)"
        dataString = dataString + "&FDB_Address=\(allVar.FDB_Address?.text!)"
        dataString = dataString + "&Last_Seen_Alive=\(allVar.Last_Seen_Alive?.text!)"
        dataString = dataString + "&LSA_Address=\(allVar.LSA_Address?.text!)"
        dataString = dataString + "&Witness=\(allVar.Witness?.text!)"
        dataString = dataString + "&Weather=\(allVar.Weather?.text!)"
        dataString = dataString + "&Activity=\(allVar.Activity?.text!)"
        dataString = dataString + "&Position_Body=\(allVar.Position_Body?.text!)"
        dataString = dataString + "&Livor=\(allVar.Livor?.text!)"
        dataString = dataString + "&Rigor=\(allVar.Rigor?.text!)"
        dataString = dataString + "&Consisent_With_Position=\(allVar.Consisent_With_Position?.text!)"
        dataString = dataString + "&Clothed=\(allVar.Clothed?.text!)"
        dataString = dataString + "&Partially_Clothed=\(allVar.Partially_Clothed?.text!)"
        dataString = dataString + "&Unclothed=\(allVar.Unclothed?.text!)"
        dataString = dataString + "&Dis_Mark=\(allVar.Dis_Mark?.text!)"
        dataString = dataString + "&Body_Temp=\(allVar.Body_Temp?.text!)"
        dataString = dataString + "&Immed_Cause=\(allVar.Immed_Cause?.text!)"
        dataString = dataString + "&Due_to=\(allVar.Due_to?.text!)"
        dataString = dataString + "&Due_to_2=\(allVar.Due_to_2?.text!)"
        dataString = dataString + "&Evidence_Collected=\(allVar.Evidence_Collected?.text!)"
        dataString = dataString + "&Collected_By=\(allVar.Collected_By?.text!)"
        dataString = dataString + "&Date=\(allVar.Date?.text!)"
        dataString = dataString + "&Time=\(allVar.Time?.text!)"
        dataString = dataString + "&Name_Ph=\(allVar.Name_Ph?.text!)"
        dataString = dataString + "&Number_PH=\(allVar.Number_PH?.text!)"
        dataString = dataString + "&Medical_History=\(allVar.Medical_History?.text!)"
        dataString = dataString + "&Medications=\(allVar.Medications?.text!)"
        dataString = dataString + "&Officer=\(allVar.Officer?.text!)"
        dataString = dataString + "&Medical_Examiner=\(allVar.Medical_Examiner?.text!)"
        dataString = dataString + "&Amph_Field=\(allVar.Amph_Field?.text!)"
        dataString = dataString + "&Barbituat_field=\(allVar.Barbituat_field?.text!)"
        dataString = dataString + "&Benzo_field=\(allVar.Benzo_field?.text!)"
        dataString = dataString + "&Cannab_Field=\(allVar.Cannab_Field?.text!)"
        dataString = dataString + "&Cocaine_Field=\(allVar.Cocaine_Field?.text!)"
        dataString = dataString + "&Fent_Field=\(allVar.Fent_Field?.text!)"
        dataString = dataString + "&Methadone_Field=\(allVar.Methadone_Field?.text!)
        dataString = dataString + "&Opiates_Field=\(allVar.Opiates_Field?.text!)"
        dataString = dataString + "&Oxycodone_Field=\(allVar.Oxycodone_Field?.text!)"
        dataString = dataString + "&Propo_field=\(allVar.Propo_field?.text!)"
        dataString = dataString + "&Analgesics_field=\(allVar.Analgesics_field?.text!)"
        dataString = dataString + "&Bupren_Field=\(allVar.Bupren_Field?.text!)"
        dataString = dataString + "&Anti_conv_Field=\(allVar.Anti_conv_Field?.text!)"
        dataString = dataString + "&Antdep_field=\(allVar.Antdep_field?.text!)"
        dataString = dataString + "&Antipsycho_fields=\(allVar.Antipsycho_fields?.text!)"
        dataString = dataString + "&Body_Released_To=\(allVar.Body_Released_To?.text!)"
        dataString = dataString + "&Cost_of_Transport=\(allVar.Cost_of_Transport?.text!)"
        dataString = dataString + "&Funeral_Home=\(allVar.Funeral_Home?.text!)"
        dataString = dataString + "&Phone_Number_1=\(allVar.Phone_Number_1?.text!)"
        dataString = dataString + "&Firearm_Type=\(allVar.Firearm_Type?.text!)"
        dataString = dataString + "&Firearm_Recov=\(allVar.Firearm_Recov?.text!)"
        dataString = dataString + "&Other_Field=\(allVar.Other_Field?.text!)"
        dataString = dataString + "&Casings_Recov=\(allVar.Casings_Recov?.text!)"
        dataString = dataString + "&Weapon_NF=\(allVar.Weapon_NF?.text!)"
        dataString = dataString + "&Other_Firearm=\(allVar.Other_Firearm?.text!)"
        dataString = dataString + "&Firearm_SN=\(allVar.Firearm_SN?.text!)"
        dataString = dataString + "&Caliber=\(allVar.Caliber?.text!)"
        dataString = dataString + "&Gauge=\(allVar.Gauge?.text!)"
        dataString = dataString + "&Firearm_Owner=\(allVar.Firearm_Owner?.text!)"
        dataString = dataString + "&Firearm_Storage=\(allVar.Firearm_Storage?.text!)"
        dataString = dataString + "&Gunshot_Residue=\(allVar.Gunshot_Residue?.text!)"
        dataString = dataString + "&Dominant_Hand=\(allVar.Dominant_Hand?.text!)"
        dataString = dataString + "&Type_of_Amm=\(allVar.Type_of_Amm?.text!)"
        dataString = dataString + "&Number_Of_Shells=\(allVar.Number_Of_Shells?.text!)"
        dataString = dataString + "&A_VehicleType=\(allVar.A_VehicleType?.text!)"
        dataString = dataString + "&S_DMHP=\(allVar.S_DMHP?.text!)"
        dataString = dataString + "&S_Note=\(allVar.S_Note?.text!)"
        dataString = dataString + "&H_WhoWasThr=\(allVar.H_WhoWasThr?.text!)"
        dataString = dataString + "&H_TheVicis=\(allVar.H_TheVicis?.text!)"
        dataString = dataString + "&O_DrugField=\(allVar.O_DrugField?.text!)"
        dataString = dataString + "&O_DiagMenHealthProb=\(allVar.O_DiagMenHealthProb?.text!)"
        dataString = dataString + "&Narrative_Comments=\(Narrative_Comments.text!)"
        dataString = dataString + "&Alcohol_Field=\(allVar.Alcohol_Field?.text!)"
         dataString = dataString + "&Signed_By=\(allVar.Signed_By?.text!)"
 */
        dataString = dataString + "&Bezno=\(allVar.Benzo?.isOn)"
        dataString = dataString + "&Barbitua=\(allVar.Barbitua?.isOn)"
        dataString = dataString + "&Death_Certificate_Signed=\(allVar.Death_Certificate_Signed?.isOn)"
        dataString = dataString + "&Alcohol_Use_Sus=\(allVar.Alcohol_Use_Sus?.isOn)"
        dataString = dataString + "&Drug_Use_Sus=\(allVar.Drug_Use_Sus?.isOn)"
        dataString = dataString + "&Alcohol=\(allVar.Alcohol?.isOn)"
        dataString = dataString + "&Amphe=\(allVar.Amphe?.isOn)"
        dataString = dataString + "&Photo=\(allVar.Photo?.isOn)"
        dataString = dataString + "&Toxicology_Collected=\(allVar.Toxicology_Collected?.isOn)"
        dataString = dataString + "&Blood=\(allVar.Blood?.isOn)"
        dataString = dataString + "&Urine=\(allVar.Urine?.isOn)"
        dataString = dataString + "&Virteous=\(allVar.Virteous?.isOn)"
        dataString = dataString + "&Ems_At_Scene=\(allVar.Ems_At_Scene?.isOn)"
        dataString = dataString + "&Victim_Seen=\(allVar.Victim_Seen?.isOn)"
        dataString = dataString + "&Admitted=\(allVar.Admitted?.isOn)"
        dataString = dataString + "&Attending_PHN=\(allVar.Attending_PHN?.isOn)"
        dataString = dataString + "&Diabetes=\(allVar.Diabetes?.isOn)"
        dataString = dataString + "&Medical_Record_Req=\(allVar.Medical_Record_Req?.isOn)"
        dataString = dataString + "&Koda_Notified=\(allVar.Koda_Notified?.isOn)"
        dataString = dataString + "&Organ_Donate=\(allVar.Organ_Donate?.isOn)"
        dataString = dataString + "&Tissue_Donate=\(allVar.Tissue_Donate?.isOn)"
        dataString = dataString + "&Cornea_Donate=\(allVar.Cornea_Donate?.isOn)"
        dataString = dataString + "&Police_Dep_Notif=\(allVar.Police_Dep_Notif?.isOn)"
        dataString = dataString + "&Osha_Req=\(allVar.Osha_Req?.isOn)"
        dataString = dataString + "&Coroners_Inq=\(allVar.Coroners_Inq?.isOn)"
        dataString = dataString + "&Autopsy=\(allVar.Autopsy?.isOn)"
        
        
        dataString = dataString + "&Cannabinoids=\(allVar.Cannabinoids?.isOn)"
        dataString = dataString + "&Tissue_Donate=\(allVar.Tissue_Donate?.isOn)"
        dataString = dataString + "&Cocaine=\(allVar.Cocaine?.isOn)"
        dataString = dataString + "&Fentanyl=\(allVar.Fentanyl?.isOn)"
        dataString = dataString + "&Methadone=\(allVar.Methadone?.isOn)"
        dataString = dataString + "&Opiates=\(allVar.Opiates?.isOn)"
        dataString = dataString + "&Oxycodone=\(allVar.Oxycodone?.isOn)"
        dataString = dataString + "&Propo=\(allVar.Propo?.isOn)"
        dataString = dataString + "&Analgesics=\(allVar.Analgesics?.isOn)"
        dataString = dataString + "&Bupren=\(allVar.Bupren?.isOn)"
        dataString = dataString + "&Anticonv=\(allVar.Anticonv?.isOn)"
        dataString = dataString + "&Antidep=\(allVar.Antidep?.isOn)"
        dataString = dataString + "&Antipsycho=\(allVar.Antipsycho?.isOn)"
        dataString = dataString + "&Other=\(allVar.Other?.isOn)"
        dataString = dataString + "&Body_Transported=\(allVar.Body_Transported?.isOn)"
        dataString = dataString + "&Cremation=\(allVar.Cremation?.isOn)"
        dataString = dataString + "&Cremation_Permit=\(allVar.Cremation_Permit?.isOn)"
        dataString = dataString + "&Head=\(allVar.Head?.isOn)"
        dataString = dataString + "&Neck=\(allVar.Neck?.isOn)"
        dataString = dataString + "&Face=\(allVar.Face?.isOn)"
        dataString = dataString + "&Thorax=\(allVar.Thorax?.isOn)"
        dataString = dataString + "&Abdo_LB=\(allVar.Abdo_LB?.isOn)"
        dataString = dataString + "&Spine=\(allVar.Spine?.isOn)"
        dataString = dataString + "&Upper_Ex=\(allVar.Upper_Ex?.isOn)"
        dataString = dataString + "&Lower_Ex=\(allVar.Lower_Ex?.isOn)"
        dataString = dataString + "&Unknown=\(allVar.Unknown?.isOn)"
        dataString = dataString + "&Additional_Wounds=\(allVar.Additional_Wounds?.isOn)"
        dataString = dataString + "&N_NursingHome=\(allVar.N_NursingHome?.isOn)"
        dataString = dataString + "&N_SIDS=\(allVar.N_SIDS?.isOn)"
        dataString = dataString + "&N_Smoker=\(allVar.N_Smoker?.isOn)"
        dataString = dataString + "&N_Diabetes=\(allVar.N_Diabetes?.isOn)"
        dataString = dataString + "&N_Heart=\(allVar.N_Heart?.isOn)"
        dataString = dataString + "&A_Fall=\(allVar.A_Fall?.isOn)"
        dataString = dataString + "&A_Hunting=\(allVar.A_Hunting?.isOn)"
        dataString = dataString + "&A_PlayingWG=\(allVar.A_PlayingWG?.isOn)"
        dataString = dataString + "&A_Load=\(allVar.A_Load?.isOn)"
        dataString = dataString + "&A_MotorVehicle=\(allVar.A_MotorVehicle?.isOn)"
        dataString = dataString + "&A_TargetShooting=\(allVar.A_TargetShooting?.isOn)"
        dataString = dataString + "&A_SelfDefenseShooting=\(allVar.A_SelfDefenseShooting?.isOn)"
        dataString = dataString + "&A_ShowingGun=\(allVar.A_ShowingGun?.isOn)"
        dataString = dataString + "&A_CleanGun=\(allVar.A_CleanGun?.isOn)"
        dataString = dataString + "&A_GunDefect=\(allVar.A_GunDefect?.isOn)"
        dataString = dataString + "&A_CelebFiring=\(allVar.A_CelebFiring?.isOn)"
        dataString = dataString + "&A_Other=\(allVar.A_Other?.isOn)"
        dataString = dataString + "&A_MVCrash=\(allVar.A_MVCrash?.isOn)"
        dataString = dataString + "&A_Passenger=\(allVar.A_Passenger?.isOn)"
        dataString = dataString + "&A_Driver=\(allVar.A_Driver?.isOn)"
        dataString = dataString + "&A_Pedestrian=\(allVar.A_Pedestrian?.isOn)"
        dataString = dataString + "&A_LapBeltUsed=\(allVar.A_LapBeltUsed?.isOn)"
        dataString = dataString + "&A_ShoulderBeltUsed=\(allVar.A_ShoulderBeltUsed?.isOn)"
        dataString = dataString + "&A_HelmetWorn=\(allVar.A_HelmetWorn?.isOn)"
        dataString = dataString + "&A_AirbagDeploy=\(allVar.A_AirbagDeploy?.isOn)"
        dataString = dataString + "&A_HitRun=\(allVar.A_HitRun?.isOn)"
        dataString = dataString + "&A_NonHighway=\(allVar.A_NonHighway?.isOn)"
        dataString = dataString + "&S_LCWLTW=\(allVar.S_LCWLTW?.isOn)"
        dataString = dataString + "&S_ALC=\(allVar.S_ALC?.isOn)"
        dataString = dataString + "&S_CDM=\(allVar.S_CDM?.isOn)"
        dataString = dataString + "&S_TMI=\(allVar.S_TMI?.isOn)"
        dataString = dataString + "&S_FP=\(allVar.S_FP?.isOn)"
        dataString = dataString + "&S_PHP=\(allVar.S_PHP?.isOn)"
        dataString = dataString + "&S_JP=\(allVar.S_JP?.isOn)"
        dataString = dataString + "&S_LoE=\(allVar.S_LoE?.isOn)"
        dataString = dataString + "&S_RD=\(allVar.S_RD?.isOn)"
        dataString = dataString + "&S_IPP=\(allVar.S_IPP?.isOn)"
        dataString = dataString + "&S_IPL=\(allVar.S_IPL?.isOn)"
        dataString = dataString + "&S_IPTL=\(allVar.S_IPTL?.isOn)"
        dataString = dataString + "&S_IPV=\(allVar.S_IPV?.isOn)"
        dataString = dataString + "&S_ORP=\(allVar.S_ORP?.isOn)"
        dataString = dataString + "&S_SP=\(allVar.S_SP?.isOn)"
        dataString = dataString + "&S_AP=\(allVar.S_AP?.isOn)"
        dataString = dataString + "&S_SubP=\(allVar.S_SubP?.isOn)"
        dataString = dataString + "&S_RCP=\(allVar.S_RCP?.isOn)"
        dataString = dataString + "&S_LegP=\(allVar.S_LegP?.isOn)"
        dataString = dataString + "&S_RSRF=\(allVar.S_RSRF?.isOn)"
        dataString = dataString + "&S_ODRF=\(allVar.S_ODRF?.isOn)"
        dataString = dataString + "&S_PVC=\(allVar.S_PVC?.isOn)"
        dataString = dataString + "&S_VVC=\(allVar.S_VVC?.isOn)"
        dataString = dataString + "&S_Other=\(allVar.S_Other?.isOn)"
        dataString = dataString + "&S_LSN=\(allVar.S_LSN?.isOn)"
        dataString = dataString + "&S_DADBS=\(allVar.S_DADBS?.isOn)"
        dataString = dataString + "&S_HSA=\(allVar.S_HSA?.isOn)"
        dataString = dataString + "&S_ThS=\(allVar.S_ThS?.isOn)"
        dataString = dataString + "&H_Brawl=\(allVar.H_Brawl?.isOn)"
        dataString = dataString + "&H_DrugRel=\(allVar.H_DrugRel?.isOn)"
        dataString = dataString + "&H_IPL=\(allVar.H_IPL?.isOn)"
        dataString = dataString + "&H_ITPL=\(allVar.H_IPTL?.isOn)"
        dataString = dataString + "&H_IPP=\(allVar.H_IPP?.isOn)"
        dataString = dataString + "&H_OtherRel=\(allVar.H_OtherRel?.isOn)"
        dataString = dataString + "&H_IAC=\(allVar.H_IAC?.isOn)"
        dataString = dataString + "&H_AWAC=\(allVar.H_AWAC?.isOn)"
        dataString = dataString + "&H_AOMP=\(allVar.H_AOMP?.isOn)"
        dataString = dataString + "&H_GangRel=\(allVar.H_GangRel?.isOn)"
        dataString = dataString + "&H_Jealousy=\(allVar.H_Jealousy?.isOn)"
        dataString = dataString + "&H_JustHom=\(allVar.H_JustHom?.isOn)"
        dataString = dataString + "&H_OthAAC=\(allVar.H_OthAAC?.isOn)"
        dataString = dataString + "&H_HC=\(allVar.H_HC?.isOn)"
        dataString = dataString + "&H_IB=\(allVar.H_IB?.isOn)"
        dataString = dataString + "&H_RandoV=\(allVar.H_RandoV?.isOn)"
        dataString = dataString + "&H_TerrorA=\(allVar.H_TerrorA?.isOn)"
        dataString = dataString + "&H_Other=\(allVar.H_Other?.isOn)"
        dataString = dataString + "&H_MercKill=\(allVar.H_MercKill?.isOn)"
        dataString = dataString + "&H_ChildFat=\(allVar.H_ChildFat?.isOn)"
        dataString = dataString + "&H_InfantIn=\(allVar.H_InfantIn?.isOn)"
        dataString = dataString + "&H_ChildWitnI=\(allVar.H_ChildWitnI?.isOn)"
        dataString = dataString + "&H_ChPSN=\(allVar.H_ChPSN?.isOn)"
        dataString = dataString + "&H_VWAPOOD=\(allVar.H_VWAPOOD?.isOn)"
        dataString = dataString + "&H_ThreatenedHom=\(allVar.H_ThreatenedHom?.isOn)"
        dataString = dataString + "&O_DrugPara=\(allVar.O_DrugPara?.isOn)"
        dataString = dataString + "&O_WitnessPres=\(allVar.O_WitnessPres?.isOn)"
        dataString = dataString + "&O_DrugAbuseProb=\(allVar.O_DrugAbuseProb?.isOn)"
        dataString = dataString + "&O_AlcoholAbuseProblem=\(allVar.O_AlcoholAbuseProblem?.isOn)"
        dataString = dataString + "&O_TreatForSubAbu=\(allVar.O_TreatForSubAbu?.isOn)"
        dataString = dataString + "&O_NalOpAnAd=\(allVar.O_NalOpAnAd?.isOn)"
        dataString = dataString + "&O_ChrPain=\(allVar.O_ChrPain?.isOn)"
        dataString = dataString + "&O_CurrPainTreat=\(allVar.O_CurrPainTreat?.isOn)"
        dataString = dataString + "&O_HisIncar=\(allVar.O_HisIncar?.isOn)"
        dataString = dataString + "&O_CurrIncar=\(allVar.O_CurrIncar?.isOn)"
        dataString = dataString + "&O_RecRel=\(allVar.O_RecRel?.isOn)"
        dataString = dataString + "&O_Prev=\(allVar.O_Prev?.isOn)"
        dataString = dataString + "&O_CurrDepMood=\(allVar.O_CurrDepMood?.isOn)"
        dataString = dataString + "&O_CurrMenHelProb=\(allVar.O_CurrMenHelProb?.isOn)"
        dataString = dataString + "&O_TreatMenHealth=\(allVar.O_TreatMenHealth?.isOn)"
        
        dataString = dataString + "&CaseNum=\(String(describing: allVar.CaseNum?.text!))"
        dataString = dataString + "&Coroner_Deputy=\(String(describing: allVar.Coroner_Deputy?.text!))"
        dataString = dataString + "&County=\(String(describing: allVar.County?.text!))"
        dataString = dataString + "&Date_of_Call=\(String(describing: allVar.Date_of_Call?.text!))"
        dataString = dataString + "&Time_of_Call=\(String(describing: allVar.Time_of_Call?.text!))"
        dataString = dataString + "&Person_Calling=\(String(describing: allVar.Person_Calling?.text!))"
        dataString = dataString + "&Police_Agency=\(String(describing: allVar.Police_Agency?.text!))"
        dataString = dataString + "&Time_of_Arrival=\(String(describing: allVar.Time_of_Arrival?.text!))"
        dataString = dataString + "&Suspected=\(String(describing: allVar.Suspected?.text!))"
        dataString = dataString + "&CaseNum=\(String(describing: allVar.CaseNum?.text!))"
        dataString = dataString + "&Notified_by=\(String(describing: allVar.Notified_by?.text!))"
        dataString = dataString + "&Date_Notified=\(String(describing: allVar.Date_Notified?.text!))"
        dataString = dataString + "&Time_Notified=\(String(describing: allVar.Time_Notified?.text!))"
        dataString = dataString + "&Name=\(String(describing: allVar.Name?.text!))"
        dataString = dataString + "&Relationship=\(String(describing: allVar.Relationship?.text!))"
        dataString = dataString + "&Phone_Number=\(String(describing: allVar.Phone_Number?.text!))"
        dataString = dataString + "&Adress=\(String(describing: allVar.Adress?.text!))"
        dataString = dataString + "&City_1=\(String(describing: allVar.City_1?.text!))"
        dataString = dataString + "&State=\(String(describing: allVar.State?.text!))"
        dataString = dataString + "&Zip_1=\(String(describing: allVar.Zip_1?.text!))"
        dataString = dataString + "&CaseNum=\(String(describing: allVar.CaseNum?.text!))"
        dataString = dataString + "&First_Name=\(String(describing: allVar.First_Name?.text!))"
        dataString = dataString + "&Last_Name=\(String(describing: allVar.Last_Name?.text!))"
        dataString = dataString + "&Gender=\(String(describing: allVar.Gender?.text!))"
        dataString = dataString + "&Age=\(String(describing: allVar.Age?.text!))"
        dataString = dataString + "&Birth_Place=\(String(describing: allVar.Birth_Place?.text!))"
        dataString = dataString + "&SSN_Num=\(String(describing: allVar.SSN_Num?.text!))"
        dataString = dataString + "&Address=\(String(describing: allVar.Address?.text!))"
        dataString = dataString + "&City=\(String(describing: allVar.City?.text!))"
        dataString = dataString + "&Country_of_Res=\(String(describing: allVar.Country_of_Res?.text!))"
        dataString = dataString + "&State_of_Res=\(String(describing: allVar.State_of_Res?.text!))"
        dataString = dataString + "&Zip=\(String(describing: allVar.Zip?.text!))"
        dataString = dataString + "&Height=\(String(describing: allVar.Height?.text!))"
        dataString = dataString + "&Weight=\(String(describing: allVar.Weight?.text!))"
        dataString = dataString + "&Eyes=\(String(describing: allVar.Eyes?.text!))"
        dataString = dataString + "&Hair=\(String(describing: allVar.Hair?.text!))"
        dataString = dataString + "&Race=\(String(describing: allVar.Race?.text!))"
        dataString = dataString + "&Ethnicity=\(String(describing: allVar.Ethnicity?.text!))"
        dataString = dataString + "&Marital_Status=\(String(describing: allVar.Marital_Status?.text!))"
        dataString = dataString + "&Surving_Spouse=\(String(describing: allVar.Surving_Spouse?.text!))"
        dataString = dataString + "&Mother_MN=\(String(describing: allVar.Mother_MN?.text!))"
        dataString = dataString + "&Father_N=\(String(describing: allVar.Father_N?.text!))"
        dataString = dataString + "&Pregnant=\(String(describing: allVar.Pregnant?.text!))"
        dataString = dataString + "&Homeless=\(String(describing: allVar.Homeless?.text!))"
        dataString = dataString + "&Veteran=\(String(describing: allVar.Veteran?.text!))"
        dataString = dataString + "&Retired=\(String(describing: allVar.Retired?.text!))"
        dataString = dataString + "&Active=\(String(describing: allVar.Active?.text!))"
        dataString = dataString + "&other1=\(String(describing: allVar.other?.text!))"
        dataString = dataString + "&Branch=\(String(describing: allVar.Branch?.text!))"
        dataString = dataString + "&Last_Tour=\(String(describing: allVar.Last_Tour?.text!))"
        dataString = dataString + "&Education=\(String(describing: allVar.Education?.text!))"
        dataString = dataString + "&Employment=\(String(describing: allVar.Employment?.text!))"
        dataString = dataString + "&Industry=\(String(describing: allVar.Industry?.text!))"
        dataString = dataString + "&Current_Occupation=\(String(describing: allVar.Current_Occupation?.text!))"
        dataString = dataString + "&CaseNum=\(String(describing: allVar.CaseNum?.text!))"
        dataString = dataString + "&Death_Date=\(String(describing: allVar.Death_Date?.text!))"
        dataString = dataString + "&Death_Time=\(String(describing: allVar.Death_Time?.text!))"
        dataString = dataString + "&Injury_Date=\(String(describing: allVar.Injury_Date?.text!))"
        dataString = dataString + "&Injury_Time=\(String(describing: allVar.Injury_Time?.text!))"
        dataString = dataString + "&PlaceDeath=\(String(describing: allVar.PlaceDeath?.text!))"
        dataString = dataString + "&PlaceInjury=\(String(describing: allVar.PlaceInjury?.text!))"
        dataString = dataString + "&LS_Date=\(String(describing: allVar.LS_Date?.text!))"
        dataString = dataString + "&LS_Time=\(String(describing: allVar.LS_Time?.text!))"
        dataString = dataString + "&LS_Loc=\(String(describing: allVar.LS_Loc?.text!))"
        dataString = dataString + "&LS_CC=\(String(describing: allVar.LS_CC?.text!))"
        dataString = dataString + "&DD_Date=\(String(describing: allVar.DD_Date?.text!))"
        dataString = dataString + "&DD_Time=\(String(describing: allVar.DD_Time?.text!))"
        dataString = dataString + "&DD_Loc=\(String(describing: allVar.DD_Loc?.text!))"
        dataString = dataString + "&DD_CC=\(String(describing: allVar.DD_CC?.text!))"
        dataString = dataString + "&Found_Dead_By=\(String(describing: allVar.Found_Dead_By?.text!))"
        dataString = dataString + "&FDB_Address=\(String(describing: allVar.FDB_Address?.text!))"
        dataString = dataString + "&Last_Seen_Alive=\(String(describing: allVar.Last_Seen_Alive?.text!))"
        dataString = dataString + "&LSA_Address=\(String(describing: allVar.LSA_Address?.text!))"
        dataString = dataString + "&Witness=\(String(describing: allVar.Witness?.text!))"
        dataString = dataString + "&Weather=\(String(describing: allVar.Weather?.text!))"
        dataString = dataString + "&Activity=\(String(describing: allVar.Activity?.text!))"
        dataString = dataString + "&Position_Body=\(String(describing: allVar.Position_Body?.text!))"
        dataString = dataString + "&Livor=\(String(describing: allVar.Livor?.text!))"
        dataString = dataString + "&Rigor=\(String(describing: allVar.Rigor?.text!))"
        dataString = dataString + "&Consisent_With_Position=\(String(describing: allVar.Consisent_With_Position?.text!))"
        dataString = dataString + "&Clothed=\(String(describing: allVar.Clothed?.text!))"
        dataString = dataString + "&Partially_Clothed=\(String(describing: allVar.Partially_Clothed?.text!))"
        dataString = dataString + "&Unclothed=\(String(describing: allVar.Unclothed?.text!))"
        dataString = dataString + "&Dis_Mark=\(String(describing: allVar.Dis_Mark?.text!))"
        dataString = dataString + "&Body_Temp=\(String(describing: allVar.Body_Temp?.text!))"
        dataString = dataString + "&Body_Decomp=\(String(describing: allVar.Body_Decomp?.text!))"
        dataString = dataString + "&Immed_Cause=\(String(describing: allVar.Immed_Cause?.text!))"
        dataString = dataString + "&Due_to=\(String(describing: allVar.Due_to?.text!))"
        dataString = dataString + "&Due_to_2=\(String(describing: allVar.Due_to_2?.text!))"
        dataString = dataString + "&Evidence_Collected=\(String(describing: allVar.Evidence_Collected?.text!))"
        dataString = dataString + "&Collected_By=\(String(describing: allVar.Collected_By?.text!))"
        dataString = dataString + "&Date=\(String(describing: allVar.Date?.text!))"
        dataString = dataString + "&Time=\(String(describing: allVar.Time?.text!))"
        dataString = dataString + "&Name_Ph=\(String(describing: allVar.Name_Ph?.text!))"
        dataString = dataString + "&Number_PH=\(String(describing: allVar.Number_PH?.text!))"
        dataString = dataString + "&Medical_History=\(String(describing: allVar.Medical_History?.text!))"
        dataString = dataString + "&Medications=\(String(describing: allVar.Medications?.text!))"
        dataString = dataString + "&Officer=\(String(describing: allVar.Officer?.text!))"
        dataString = dataString + "&Medical_Examiner=\(String(describing: allVar.Medical_Examiner?.text!))"
        dataString = dataString + "&Signed_By=\(String(describing: allVar.Signed_By?.text!))"
        dataString = dataString + "&Alcohol_Field=\(String(describing: allVar.Alcohol_Field?.text!))"
        dataString = dataString + "&Amph_Field=\(String(describing: allVar.Amph_Field?.text!))"
        dataString = dataString + "&Barbituat_field=\(String(describing: allVar.Barbituat_field?.text!))"
        dataString = dataString + "&Benzo_field=\(String(describing: allVar.Benzo_field?.text!))"
        dataString = dataString + "&Cannab_Field=\(String(describing: allVar.Cannab_Field?.text!))"
        dataString = dataString + "&Cocaine_Field=\(String(describing: allVar.Cocaine_Field?.text!))"
        dataString = dataString + "&Fent_Field=\(String(describing: allVar.Fent_Field?.text!))"
        dataString = dataString + "&Methadone_Field=\(String(describing: allVar.Methadone_Field?.text!))"
        dataString = dataString + "&Opiates_Field=\(String(describing: allVar.Opiates_Field?.text!))"
        dataString = dataString + "&Oxycodone_Field=\(String(describing: allVar.Oxycodone_Field?.text!))"
        dataString = dataString + "&Propo_field=\(String(describing: allVar.Propo_field?.text!))"
        dataString = dataString + "&Analgesics_field=\(String(describing: allVar.Analgesics_field?.text!))"
        dataString = dataString + "&Bupren_Field=\(String(describing: allVar.Bupren_Field?.text!))"
        dataString = dataString + "&Anti_conv_Field=\(String(describing: allVar.Anti_conv_Field?.text!))"
        dataString = dataString + "&Antdep_field=\(String(describing: allVar.Antdep_field?.text!))"
        dataString = dataString + "&Antipsycho_fields=\(String(describing: allVar.Antipsycho_fields?.text!))"
        dataString = dataString + "&Other_Field=\(String(describing: allVar.Other_Field?.text!))"
        dataString = dataString + "&Body_Released_To=\(String(describing: allVar.Body_Released_To?.text!))"
        dataString = dataString + "&Cost_of_Transport=\(String(describing: allVar.Cost_of_Transport?.text!))"
        dataString = dataString + "&Funeral_Home=\(String(describing: allVar.Funeral_Home?.text!))"
        dataString = dataString + "&Phone_Number_1=\(String(describing: allVar.Phone_Number_1?.text!))"
        dataString = dataString + "&Firearm_Type=\(String(describing: allVar.Firearm_Type?.text!))"
        dataString = dataString + "&Firearm_Recov=\(String(describing: allVar.Firearm_Recov?.text!))"
        dataString = dataString + "&Casings_Recov=\(String(describing: allVar.Casings_Recov?.text!))"
        dataString = dataString + "&Weapon_NF=\(String(describing: allVar.Weapon_NF?.text!))"
        dataString = dataString + "&Other_Firearm=\(String(describing: allVar.Other_Firearm?.text!))"
        dataString = dataString + "&Firearm_SN=\(String(describing: allVar.Firearm_SN?.text!))"
        dataString = dataString + "&Caliber=\(String(describing: allVar.Caliber?.text!))"
        dataString = dataString + "&Gauge=\(String(describing: allVar.Gauge?.text!))"
        dataString = dataString + "&Firearm_Owner=\(String(describing: allVar.Firearm_Owner?.text!))"
        dataString = dataString + "&Firearm_Storage=\(String(describing: allVar.Firearm_Storage?.text!))"
        dataString = dataString + "&Gunshot_Residue=\(String(describing: allVar.Gunshot_Residue?.text!))"
        dataString = dataString + "&Dominant_Hand=\(String(describing: allVar.Dominant_Hand?.text!))"
        dataString = dataString + "&Type_of_Amm=\(String(describing: allVar.Type_of_Amm?.text!))"
        dataString = dataString + "&Number_Of_Shells=\(String(describing: allVar.Number_Of_Shells?.text!))"
        dataString = dataString + "&A_VehicleType=\(String(describing: allVar.A_VehicleType?.text!))"
        dataString = dataString + "&S_DMHP=\(String(describing: allVar.S_DMHP?.text!))"
        dataString = dataString + "&S_Note=\(String(describing: allVar.S_Note?.text!))"
        dataString = dataString + "&H_WhoWasThr=\(String(describing: allVar.H_WhoWasThr?.text!))"
        dataString = dataString + "&H_TheVicis=\(String(describing: allVar.H_TheVicis?.text!))"
        dataString = dataString + "&O_DrugField=\(String(describing: allVar.O_DrugField?.text!))"
        dataString = dataString + "&O_DiagMenHealthProb=\(String(describing: allVar.O_DiagMenHealthProb?.text!))"
        dataString = dataString + "&Narrative_Comments=\(String(describing: allVar.Narrative_Comments?.text!))"

        
        print(dataString)
        // Convert the Post String to utf8 format
        let dataD = dataString.data(using: .utf8)
        
        do{
            // The upload task and upload job is defined here
            let uploadJob = URLSession.shared.uploadTask(with: request, from: dataD)
            {
                
            data, response, error in
                
            if error != nil
            {
                // alert user if there is an error inside the DispatchQueue.main.async
                let alert = UIAlertController(title: "Upload Didn't Work", message: "The connection to the server didn't work", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else
            {
                if let unwrappedData = data {
                    // Response from server
                    let returnedData = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    
                    // Insert into Database Worked
                    if returnedData == "1"
                    {
                        // Display an alert if no error and database insert worked
                        DispatchQueue.main.async
                        {
                            let alert = UIAlertController(title: "Upload Successful", message: "MDSI Form has been successfully uploaded.", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                    else
                    {
                        // Display an alert if an error and database insert didn't work
                        DispatchQueue.main.async
                        {
                            let alert = UIAlertController(title: "Upload Successful", message: "MDSI Form has been successfull uploaded.", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler:nil))
                            self.present(alert, animated:true, completion: nil)
                        }
                    }
                }
            }
            }
            uploadJob.resume()
        }
        allVar.isPublished = true
        goToHomePage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        print(Narrative_Comments!)
        // Do any additional setup after loading the view.
        let kbToolBar = UIToolbar()
        kbToolBar.sizeToFit()
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.doneClicked))
        kbToolBar.setItems([flexSpace, doneBtn], animated: true)
        self.Narrative_Comments.inputAccessoryView = kbToolBar

        if allVar.isPending || allVar.isPublished{
                Narrative_Comments?.text = allVar.Narrative_Comments?.text
        }
        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
}

