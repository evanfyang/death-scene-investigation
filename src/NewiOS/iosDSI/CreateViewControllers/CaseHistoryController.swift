//
//  CaseHistoryController.swift
//  iosDSI
//
//  Created by DSI group 2 on 10/21/20.
//

import UIKit

class CaseHistoryController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // the outlets connected to the elements
    @IBOutlet weak var N_NursingHome: UISwitch!
    @IBOutlet weak var N_SIDS: UISwitch!
    @IBOutlet weak var N_Smoker: UISwitch!
    @IBOutlet weak var N_Diabetes: UISwitch!
    @IBOutlet weak var N_Heart: UISwitch!
    
    @IBOutlet weak var A_Fall: UISwitch!
    @IBOutlet weak var A_Hunting: UISwitch!
    @IBOutlet weak var A_PlayingWG: UISwitch!
    @IBOutlet weak var A_Load: UISwitch!
    @IBOutlet weak var A_MotorVehicle: UISwitch!
    @IBOutlet weak var A_TargetShooting: UISwitch!
    @IBOutlet weak var A_SelfDefenseShooting: UISwitch!
    @IBOutlet weak var A_ShowingGun: UISwitch!
    @IBOutlet weak var A_CleanGun: UISwitch!
    @IBOutlet weak var A_GunDefect: UISwitch!
    @IBOutlet weak var A_CelebFiring: UISwitch!
    @IBOutlet weak var A_Other: UISwitch!
    @IBOutlet weak var A_MVCrash: UISwitch!
    @IBOutlet weak var A_Passenger: UISwitch!
    @IBOutlet weak var A_Driver: UISwitch!
    @IBOutlet weak var A_Pedestrian: UISwitch!
    @IBOutlet weak var A_LapBeltUsed: UISwitch!
    @IBOutlet weak var A_ShoulderBeltUsed: UISwitch!
    @IBOutlet weak var A_HelmetWorn: UISwitch!
    @IBOutlet weak var A_AirbagDeploy: UISwitch!
    @IBOutlet weak var A_HitRun: UISwitch!
    @IBOutlet weak var A_NonHighway: UISwitch!
    @IBOutlet weak var A_VehicleType: UITextField!
    
    @IBOutlet weak var S_LCWLTW: UISwitch!
    @IBOutlet weak var S_ALC: UISwitch!
    @IBOutlet weak var S_CDM: UISwitch!
    @IBOutlet weak var S_CMHP: UISwitch!
    @IBOutlet weak var S_DMHP_field: UITextField!
    @IBOutlet weak var S_TMI: UISwitch!
    @IBOutlet weak var S_FP: UISwitch!
    @IBOutlet weak var S_PHP: UISwitch!
    @IBOutlet weak var S_JP: UISwitch!
    @IBOutlet weak var S_LoE: UISwitch!
    @IBOutlet weak var S_RD: UISwitch!
    @IBOutlet weak var S_IPP: UISwitch!
    @IBOutlet weak var S_IPL: UISwitch!
    @IBOutlet weak var S_IPTL: UISwitch!
    @IBOutlet weak var S_IPV: UISwitch!
    @IBOutlet weak var S_ORP: UISwitch!
    @IBOutlet weak var S_SP: UISwitch!
    @IBOutlet weak var S_AP: UISwitch!
    @IBOutlet weak var S_SubP: UISwitch!
    @IBOutlet weak var S_RCP: UISwitch!
    @IBOutlet weak var S_LegP: UISwitch!
    @IBOutlet weak var S_RSRF: UISwitch!
    @IBOutlet weak var S_ODRF: UISwitch!
    @IBOutlet weak var S_PVC: UISwitch!
    @IBOutlet weak var S_VVC: UISwitch!
    @IBOutlet weak var S_Other: UISwitch!
    @IBOutlet weak var S_LSN: UISwitch!
    @IBOutlet weak var S_DADBS: UISwitch!
    @IBOutlet weak var S_HSA: UISwitch!
    @IBOutlet weak var S_ThS: UISwitch!
    @IBOutlet weak var S_ThSfield: UITextField!
    
    @IBOutlet weak var H_Brawl: UISwitch!
    @IBOutlet weak var H_DrugRel: UISwitch!
    @IBOutlet weak var H_IPL: UISwitch!
    @IBOutlet weak var H_IPTL: UISwitch!
    @IBOutlet weak var H_IPP: UISwitch!
    @IBOutlet weak var H_OtherRel: UISwitch!
    @IBOutlet weak var H_IAC: UISwitch!
    @IBOutlet weak var H_AWAC: UISwitch!
    @IBOutlet weak var H_AOMP: UISwitch!
    @IBOutlet weak var H_GangRel: UISwitch!
    @IBOutlet weak var H_Jealousy: UISwitch!
    @IBOutlet weak var H_JustHom: UISwitch!
    @IBOutlet weak var H_OthAAC: UISwitch!
    @IBOutlet weak var H_HC: UISwitch!
    @IBOutlet weak var H_IB: UISwitch!
    @IBOutlet weak var H_RandoV: UISwitch!
    @IBOutlet weak var H_TerrorA: UISwitch!
    @IBOutlet weak var H_Other: UISwitch!
    @IBOutlet weak var H_MercKill: UISwitch!
    @IBOutlet weak var H_ChildFat: UISwitch!
    @IBOutlet weak var H_InfantIn: UISwitch!
    @IBOutlet weak var H_ChildWitnI: UISwitch!
    @IBOutlet weak var H_ChPSN: UISwitch!
    @IBOutlet weak var H_VWAPOOD: UISwitch!
    @IBOutlet weak var H_ThreatenedHom: UISwitch!
    @IBOutlet weak var H_WhoWasThr: UITextField!
    @IBOutlet weak var H_TheVicis: UITextField!
    
    @IBOutlet weak var O_DrugPara: UISwitch!
    @IBOutlet weak var O_DrugField: UITextField!
    @IBOutlet weak var O_WitnessPres: UISwitch!
    @IBOutlet weak var O_PrevOver: UISwitch!
    @IBOutlet weak var O_DrugAbuseProb: UISwitch!
    @IBOutlet weak var O_AlcoholAbuseProblem: UISwitch!
    @IBOutlet weak var O_TreatForSubAbu: UISwitch!
    @IBOutlet weak var O_NalOpAnAd: UISwitch!
    @IBOutlet weak var O_ChrPain: UISwitch!
    @IBOutlet weak var O_CurrPainTreat: UISwitch!
    @IBOutlet weak var O_HisIncar: UISwitch!
    @IBOutlet weak var O_CurrIncar: UISwitch!
    @IBOutlet weak var O_RecRel: UISwitch!
    @IBOutlet weak var O_Prev: UISwitch!
    @IBOutlet weak var O_CurrDepMood: UISwitch!
    @IBOutlet weak var O_CurrMenHelProb: UISwitch!
    @IBOutlet weak var O_DiagMenHealthProb: UITextField!
    @IBOutlet weak var O_TreatMenHealth: UISwitch!
    

    // the code for when a button is pressed
    @IBAction func NextButton(_ sender: UIButton) {
        
        // set up a f,ag for valid commands
        var isValid = true
        
        // validate the data
        if(!A_MVCrash.isOn && (A_Passenger.isOn || A_Driver.isOn || A_Pedestrian.isOn || A_LapBeltUsed.isOn || A_ShoulderBeltUsed.isOn || A_HelmetWorn.isOn || A_AirbagDeploy.isOn || A_HitRun.isOn || A_NonHighway.isOn || A_VehicleType.text != "")) {isValid = false}
        
        if(S_DMHP_field.text != "" && !S_CMHP.isOn) {isValid = false}
        if(S_ThSfield.text != "" && !S_ThS.isOn) {isValid = false}
        
        if(H_WhoWasThr.text != "" && !H_ThreatenedHom.isOn) {isValid = false}
        if(H_TheVicis.text == "") {isValid = false}
        
        if(O_DrugField.text != "" && !O_DrugPara.isOn) {isValid = false}
        if(!O_HisIncar.isOn && (O_CurrIncar.isOn || O_RecRel.isOn || O_Prev.isOn)) {isValid = false}
        if(O_DiagMenHealthProb.text != "" && !O_CurrMenHelProb.isOn) {isValid = false}
        
        // if our valid flag is ok add it to our storage data
        if(isValid){
            Storage.CaseHistory.N_NursingHome = N_NursingHome.isOn
            Storage.CaseHistory.N_SIDS = N_SIDS.isOn
            Storage.CaseHistory.N_Smoker = N_Smoker.isOn
            Storage.CaseHistory.N_Diabetes = N_Diabetes.isOn
            Storage.CaseHistory.N_Heart = N_Heart.isOn
            
            Storage.CaseHistory.A_Fall = A_Fall.isOn
            Storage.CaseHistory.A_Hunting = A_Hunting.isOn
            Storage.CaseHistory.A_PlayingWG = A_PlayingWG.isOn
            Storage.CaseHistory.A_Load = A_Load.isOn
            Storage.CaseHistory.A_MotorVehicle = A_MotorVehicle.isOn
            Storage.CaseHistory.A_TargetShooting = A_TargetShooting.isOn
            Storage.CaseHistory.A_SelfDefenseShooting = A_SelfDefenseShooting.isOn
            Storage.CaseHistory.A_ShowingGun = A_ShowingGun.isOn
            Storage.CaseHistory.A_CleanGun = A_CleanGun.isOn
            Storage.CaseHistory.A_GunDefect = A_GunDefect.isOn
            Storage.CaseHistory.A_CelebFiring = A_CelebFiring.isOn
            Storage.CaseHistory.A_Other = A_Other.isOn
            Storage.CaseHistory.A_MVCrash = A_MVCrash.isOn
            Storage.CaseHistory.A_Passenger = A_Passenger.isOn
            Storage.CaseHistory.A_Driver = A_Driver.isOn
            Storage.CaseHistory.A_Pedestrian = A_Pedestrian.isOn
            Storage.CaseHistory.A_LapBeltUsed = A_LapBeltUsed.isOn
            Storage.CaseHistory.A_ShoulderBeltUsed = A_ShoulderBeltUsed.isOn
            Storage.CaseHistory.A_HelmetWorn = A_HelmetWorn.isOn
            Storage.CaseHistory.A_AirbagDeploy = A_AirbagDeploy.isOn
            Storage.CaseHistory.A_HitRun = A_HitRun.isOn
            Storage.CaseHistory.A_NonHighway = A_NonHighway.isOn
            Storage.CaseHistory.A_VehicleType = A_VehicleType.text!
            
            Storage.CaseHistory.S_LCWLTW = S_LCWLTW.isOn
            Storage.CaseHistory.S_ALC = S_ALC.isOn
            Storage.CaseHistory.S_CDM = S_CDM.isOn
            Storage.CaseHistory.S_CMHP = S_CMHP.isOn
            Storage.CaseHistory.S_DMHP_field = S_DMHP_field.text!
            Storage.CaseHistory.S_TMI = S_TMI.isOn
            Storage.CaseHistory.S_FP = S_FP.isOn
            Storage.CaseHistory.S_PHP = S_PHP.isOn
            Storage.CaseHistory.S_JP = S_JP.isOn
            Storage.CaseHistory.S_LoE = S_LoE.isOn
            Storage.CaseHistory.S_RD = S_RD.isOn
            Storage.CaseHistory.S_IPP = S_IPP.isOn
            Storage.CaseHistory.S_IPL = S_IPL.isOn
            Storage.CaseHistory.S_IPTL = S_IPTL.isOn
            Storage.CaseHistory.S_IPV = S_IPV.isOn
            Storage.CaseHistory.S_ORP = S_ORP.isOn
            Storage.CaseHistory.S_SP = S_SP.isOn
            Storage.CaseHistory.S_AP = S_AP.isOn
            Storage.CaseHistory.S_SubP = S_SubP.isOn
            Storage.CaseHistory.S_RCP = S_RCP.isOn
            Storage.CaseHistory.S_LegP = S_LegP.isOn
            Storage.CaseHistory.S_RSRF = S_RSRF.isOn
            Storage.CaseHistory.S_ODRF = S_ODRF.isOn
            Storage.CaseHistory.S_PVC = S_PVC.isOn
            Storage.CaseHistory.S_VVC = S_VVC.isOn
            Storage.CaseHistory.S_Other = S_Other.isOn
            Storage.CaseHistory.S_LSN = S_LSN.isOn
            Storage.CaseHistory.S_DADBS = S_DADBS.isOn
            Storage.CaseHistory.S_HSA = S_HSA.isOn
            Storage.CaseHistory.S_ThS = S_ThS.isOn
            Storage.CaseHistory.S_ThSfield = S_ThSfield.text!
            
            Storage.CaseHistory.H_Brawl = H_Brawl.isOn
            Storage.CaseHistory.H_DrugRel = H_DrugRel.isOn
            Storage.CaseHistory.H_IPL = H_IPL.isOn
            Storage.CaseHistory.H_IPTL = H_IPTL.isOn
            Storage.CaseHistory.H_IPP = H_IPP.isOn
            Storage.CaseHistory.H_OtherRel = H_OtherRel.isOn
            Storage.CaseHistory.H_IAC = H_IAC.isOn
            Storage.CaseHistory.H_AWAC = H_AWAC.isOn
            Storage.CaseHistory.H_AOMP = H_AOMP.isOn
            Storage.CaseHistory.H_GangRel = H_GangRel.isOn
            Storage.CaseHistory.H_Jealousy = H_Jealousy.isOn
            Storage.CaseHistory.H_JustHom = H_JustHom.isOn
            Storage.CaseHistory.H_OthAAC = H_OthAAC.isOn
            Storage.CaseHistory.H_HC = H_HC.isOn
            Storage.CaseHistory.H_IB = H_IB.isOn
            Storage.CaseHistory.H_RandoV = H_RandoV.isOn
            Storage.CaseHistory.H_TerrorA = H_TerrorA.isOn
            Storage.CaseHistory.H_Other = H_Other.isOn
            Storage.CaseHistory.H_MercKill = H_MercKill.isOn
            Storage.CaseHistory.H_ChildFat = H_ChildFat.isOn
            Storage.CaseHistory.H_InfantIn = H_InfantIn.isOn
            Storage.CaseHistory.H_ChildWitnI = H_ChildWitnI.isOn
            Storage.CaseHistory.H_ChPSN = H_ChPSN.isOn
            Storage.CaseHistory.H_VWAPOOD = H_VWAPOOD.isOn
            Storage.CaseHistory.H_ThreatenedHom = H_ThreatenedHom.isOn
            Storage.CaseHistory.H_WhoWasThr = H_WhoWasThr.text!
            Storage.CaseHistory.H_TheVicis = H_TheVicis.text!
            
            Storage.CaseHistory.O_DrugPara = O_DrugPara.isOn
            Storage.CaseHistory.O_DrugField = O_DrugField.text!
            Storage.CaseHistory.O_WitnessPres = O_WitnessPres.isOn
            Storage.CaseHistory.O_PrevOver = O_PrevOver.isOn
            Storage.CaseHistory.O_DrugAbuseProb = O_DrugAbuseProb.isOn
            Storage.CaseHistory.O_AlcoholAbuseProblem = O_AlcoholAbuseProblem.isOn
            Storage.CaseHistory.O_TreatForSubAbu = O_TreatForSubAbu.isOn
            Storage.CaseHistory.O_NalOpAnAd = O_NalOpAnAd.isOn
            Storage.CaseHistory.O_ChrPain = O_ChrPain.isOn
            Storage.CaseHistory.O_CurrPainTreat = O_CurrPainTreat.isOn
            Storage.CaseHistory.O_HisIncar = O_HisIncar.isOn
            Storage.CaseHistory.O_CurrIncar = O_CurrIncar.isOn
            Storage.CaseHistory.O_RecRel = O_RecRel.isOn
            Storage.CaseHistory.O_Prev = O_Prev.isOn
            Storage.CaseHistory.O_CurrDepMood = O_CurrDepMood.isOn
            Storage.CaseHistory.O_CurrMenHelProb = O_CurrMenHelProb.isOn
            Storage.CaseHistory.O_DiagMenHealthProb = O_DiagMenHealthProb.text!
            Storage.CaseHistory.O_TreatMenHealth = O_TreatMenHealth.isOn
        }
    }
}
