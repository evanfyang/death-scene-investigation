//
//  NarrativeController.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/21/20.
//

import UIKit


class NarrativeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // code goes here

    @IBAction func SubmitButton(_ sender: Any) {
        
        // all shit is sent here
        let incidentInfoUrl = "https://statsql.test.as.uky.edu/edit_incident_info.php"
        let IncidentInfoParams: Parameters = [
            "CaseNum" = Storage.IncidentInformation.CaseNum,
            "Version" = Storage.IncidentInformation.Version,
            "Death_Date" = Storage.IncidentInformation.Death_Date,
            "Death_Time" = Storage.IncidentInformation.Death_Time,
            "Injury_Date" = Storage.IncidentInformation.Injury_Date,
            "Injury_Time" = Storage.IncidentInformation.Injury_Time,
            "PlaceDeath" = Storage.IncidentInformation.PlaceDeath,
            "PlaceInjury" = Storage.IncidentInformation.PlaceInjury,
            "LS_Date" = Storage.IncidentInformation.LS_Date,
            "LS_Time" = Storage.IncidentInformation.LS_Time,
            "LS_Loc" = Storage.IncidentInformation.LS_Loc,
            "LS_CC" = Storage.IncidentInformation.LS_CC,
            "DD_Date" = Storage.IncidentInformation.DD_Date,
            "DD_Time" = Storage.IncidentInformation.DD_Time,
            "DD_CC" = Storage.IncidentInformation.DD_CC,
            "DD_Loc" = Storage.IncidentInformation.DD_Loc,
            "Found_Dead_By" = Storage.IncidentInformation.Found_Dead_By,
            "FDB_Address" = Storage.IncidentInformation.FDB_Address,
            "Last_Seen_Alive" = Storage.IncidentInformation.Last_Seen_Alive,
            "LSA_Address" = Storage.IncidentInformation.LSA_Address,
            "Witness" = Storage.IncidentInformation.Witness,
            "Weather" = Storage.IncidentInformation.Weather,
            "Activity" = Storage.IncidentInformation.Activity,
            "Position_Body" = Storage.IncidentInformation.Position_Body,
            "Livor" = Storage.IncidentInformation.Livor,
            "Rigor" = Storage.IncidentInformation.Rigor,
            "Consistent_With_Position" = Storage.IncidentInformation.Consistent_With_Position,
            "Clothed" = Storage.IncidentInformation.Clothed,
            "Partially_Clothed" = Storage.IncidentInformation.Partially_Clothed,
            "Unclothed" = Storage.IncidentInformation.Unclothed,
            "Dis_Mark" = Storage.IncidentInformation.Dis_Mark,
            "Body_Temp" = Storage.IncidentInformation.Body_Temp,
            "Body_Decomp" = Storage.IncidentInformation.Body_Decomp,
            "Immed_Cause" = Storage.IncidentInformation.Immed_Cause,
            "Due_To" = Storage.IncidentInformation.Due_To,
            "Due_To_2" = Storage.IncidentInformation.Due_To_2
            
        
        ]
        let CaseHistoryURL = "https://statsqltest.as.uky.edu/edit_case_history.php" // Location of Database
        let CaseHistoryParams: Parameters = [
            "CaseNum" = Storage.CaseHistory.CaseNum,
            "Version" = Storage.CaseHistory.Version,
            
            "N_NursingHome" = Storage.CaseHistory.N_NursingHome,
            "N_SIDS" = Storage.CaseHistory.N_SIDS,
            "N_Smoker" = Storage.CaseHistory.N_Smoker,
            "N_Diabetes" = Storage.CaseHistory.N_Diabetes,
            "N_Heart" = Storage.CaseHistory.N_Heart,
            
            "A_Fall" = Storage.CaseHistory.A_Fall,
            "A_Hunting" = Storage.CaseHistory.A_Hunting,
            "A_PlayingWG" = Storage.CaseHistory.A_PlayingWG,
            "A_Load" = Storage.CaseHistory.A_Load,
            "A_MotorVehicle" = Storage.CaseHistory.A_MotorVehicle,
            "A_TargetShooting" = Storage.CaseHistory.A_TargetShooting,
            "A_SelfDefenseShooting" = Storage.CaseHistory.A_SelfDefenseShooting,
            "A_ShowingGun" = Storage.CaseHistory.A_ShowingGun,
            "A_CleanGun" = Storage.CaseHistory.A_CleanGun,
            "A_GunDefect" = Storage.CaseHistory.A_GunDefect,
            "A_CelebFiring" = Storage.CaseHistory.A_CelebFiring,
            "A_Other" = Storage.CaseHistory.A_Other,
            "A_MVCrash" = Storage.CaseHistory.A_MVCrash,
            "A_Passenger" = Storage.CaseHistory.A_Passenger,
            "A_Driver" = Storage.CaseHistory.A_Driver,
            "A_Pedestrian" = Storage.CaseHistory.A_Pedestrian,
            "A_LapBeltUsed" = Storage.CaseHistory.A_LapBeltUsed,
            "A_ShoulderBeltUsed" = Storage.CaseHistory.A_ShoulderBeltUsed,
            "A_HelmetWorn" = Storage.CaseHistory.A_HelmetWorn,
            "A_AirbagDeploy" = Storage.CaseHistory.A_AirbagDeploy,
            "A_HitRun" = Storage.CaseHistory.A_HitRun,
            "A_NonHighway" = Storage.CaseHistory.A_NonHighway,
            "A_VehicleType" = Storage.CaseHistory.A_VehicleType,
            
            "S_LCWLTW" = Storage.CaseHistory.S_LCWLTW,
            "S_ALC" = Storage.CaseHistory.S_ALC,
            "S_CDM" = Storage.CaseHistory.S_CDM,
            "S_CMHP" = Storage.CaseHistory.S_CMHP,
            "S_DMHP_field" = Storage.CaseHistory.S_DMHP_field,
            "S_TMI" = Storage.CaseHistory.S_TMI,
            "S_FP" = Storage.CaseHistory.S_FP,
            "S_PHP" = Storage.CaseHistory.S_PHP,
            "S_JP" = Storage.CaseHistory.S_JP,
            "S_LoE" = Storage.CaseHistory.S_LoE,
            "S_RD" = Storage.CaseHistory.S_RD,
            "S_IPP" = Storage.CaseHistory.S_IPP,
            "S_IPL" = Storage.CaseHistory.S_IPL,
            "S_IPTL" = Storage.CaseHistory.S_IPTL,
            "S_IPV" = Storage.CaseHistory.S_IPV,
            "S_ORP" = Storage.CaseHistory.S_ORP,
            "S_SP" = Storage.CaseHistory.S_SP,
            "S_AP" = Storage.CaseHistory.S_AP,
            "S_SubP" = Storage.CaseHistory.S_SubP,
            "S_RCP" = Storage.CaseHistory.S_RCP,
            "S_LegP" = Storage.CaseHistory.S_LegP,
            "S_RSRF" = Storage.CaseHistory.S_RSRF,
            "S_ODRF" = Storage.CaseHistory.S_ODRF,
            "S_PVC" = Storage.CaseHistory.S_PVC,
            "S_VVC" = Storage.CaseHistory.S_VVC,
            "S_Other" = Storage.CaseHistory.S_Other,
            "S_LSN" = Storage.CaseHistory.S_LSN,
            "S_DADBS" = Storage.CaseHistory.S_DADBS,
            "S_HSA" = Storage.CaseHistory.S_HSA,
            "S_ThS" = Storage.CaseHistory.S_ThS,
            "S_ThSfield" = Storage.CaseHistory.S_ThSfield,
            
            "H_Brawl" = Storage.CaseHistory.H_Brawl,
            "H_DrugRel" = Storage.CaseHistory.H_DrugRel,
            "H_IPL" = Storage.CaseHistory.H_IPL,
            "H_IPTL" = Storage.CaseHistory.H_IPTL,
            "H_IPP" = Storage.CaseHistory.H_IPP,
            "H_OtherRel" = Storage.CaseHistory.H_OtherRel,
            "H_IAC" = Storage.CaseHistory.H_IAC,
            "H_AWAC" = Storage.CaseHistory.H_AWAC,
            "H_AOMP" = Storage.CaseHistory.H_AOMP,
            "H_GangRel" = Storage.CaseHistory.H_GangRel,
            "H_Jealousy" = Storage.CaseHistory.H_Jealousy,
            "H_JustHom" = Storage.CaseHistory.H_JustHom,
            "H_OthAAC" = Storage.CaseHistory.H_OthAAC,
            "H_HC" = Storage.CaseHistory.H_HC,
            "H_IB" = Storage.CaseHistory.H_IB,
            "H_RandoV" = Storage.CaseHistory.H_RandoV,
            "H_TerrorA" = Storage.CaseHistory.H_TerrorA,
            "H_Other" = Storage.CaseHistory.H_Other,
            "H_MercKill" = Storage.CaseHistory.H_MercKill,
            "H_ChildFat" = Storage.CaseHistory.H_ChildFat,
            "H_InfantIn" = Storage.CaseHistory.H_InfantIn,
            "H_ChildWitnI" = Storage.CaseHistory.H_ChildWitnI,
            "H_ChPSN" = Storage.CaseHistory.H_ChPSN,
            "H_VWAPOOD" = Storage.CaseHistory.H_VWAPOOD,
            "H_ThreatenedHom" = Storage.CaseHistory.H_ThreatenedHom,
            "H_WhoWasThr" = Storage.CaseHistory.H_WhoWasThr,
            "H_TheVicis" = Storage.CaseHistory.H_TheVicis,
            
            "O_DrugPara" = Storage.CaseHistory.O_DrugPara,
            "O_DrugField" = Storage.CaseHistory.O_DrugField,
            "O_WitnessPres" = Storage.CaseHistory.O_WitnessPres,
            "O_PrevOver" = Storage.CaseHistory.O_PrevOver,
            "O_DrugAbuseProb" = Storage.CaseHistory.O_DrugAbuseProb,
            "O_AlcoholAbuseProblem" = Storage.CaseHistory.O_AlcoholAbuseProblem,
            "O_TreatForSubAbu" = Storage.CaseHistory.O_TreatForSubAbu,
            "O_NalOpAnAd" = Storage.CaseHistory.O_NalOpAnAd,
            "O_ChrPain" = Storage.CaseHistory.O_ChrPain,
            "O_CurrPainTreat" = Storage.CaseHistory.O_CurrPainTreat,
            "O_HisIncar" = Storage.CaseHistory.O_HisIncar,
            "O_CurrIncar" = Storage.CaseHistory.O_CurrIncar,
            "O_RecRel" = Storage.CaseHistory.O_RecRel,
            "O_Prev" = Storage.CaseHistory.O_Prev,
            "O_CurrDepMood" = Storage.CaseHistory.O_CurrDepMood,
            "O_CurrMenHelProb" = Storage.CaseHistory.O_CurrMenHelProb,
            "O_DiagMenHealthProb" = Storage.CaseHistory.O_DiagMenHealthProb,
            "O_TreatMenHealth" = Storage.CaseHistory.O_TreatMenHealth
            
        ]
        Alamofire.request(incidentInfoUrl, method: .post,
                     parameters:
                     IncidentInfoParams)
            .validate()
            .responseString{
                response in
                if let result =
                    response.result.value{
                    let jsonData = result
                    if(jsonData.contains("success")){
                        print("Incident Info Post Success")
                    }
                    else{
                        print("Incident Info Post Failed")
                    }
                }
            }
       Alamofire.request(CaseHistoryURL, method: .post, parameters: CaseHistoryParams).validate().responseString {
            response in
            if let result = response.result.value {
                let jsonData = result
                //if there is no error
                if(jsonData.contains("success")){
                    print("Case History Post Success")
                }
                else {
                    print("Case History Post Failure")
                }
            }
        }
    }
}
