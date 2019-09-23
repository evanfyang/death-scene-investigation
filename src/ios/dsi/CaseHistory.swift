//
//  CaseHistory.swift
//  MDSI form
//
//  Created by Team Awesome on 4/8/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Case_History: UIViewController, UITextFieldDelegate {
    
    
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
    @IBOutlet weak var S_DMHP: UITextField!
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
    @IBOutlet weak var S_Note: UITextField!
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
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var ScrollView2: UIScrollView!
    @IBOutlet weak var ScrollView3: UIScrollView!
    @IBOutlet weak var ScrollView4: UIScrollView!
    @IBOutlet weak var ScrollView5: UIScrollView!
    @IBOutlet weak var ScrollView6: UIScrollView!
    @IBOutlet weak var ScrollView7: UIScrollView!
    
    
    
    
    
    
    
    
    @IBAction func Next_1(_ sender: UIButton) {
        allVar.N_NursingHome = N_NursingHome
        allVar.N_SIDS = N_SIDS
        allVar.N_Smoker = N_Smoker
        allVar.N_Diabetes = N_Diabetes
        allVar.A_Fall = A_Fall
        allVar.A_Hunting = A_Hunting
        allVar.A_PlayingWG = A_PlayingWG
        allVar.A_Load = A_Load
        allVar.A_MotorVehicle = A_MotorVehicle
        allVar.A_TargetShooting = A_TargetShooting
        allVar.A_SelfDefenseShooting = A_SelfDefenseShooting
        allVar.A_ShowingGun = A_ShowingGun
        /*
        allVar.A_CleanGun = A_CleanGun
        allVar.A_GunDefect = A_GunDefect
        allVar.A_CelebFiring = A_CelebFiring
        allVar.A_Other = A_Other
        allVar.A_MVCrash = A_MVCrash
        allVar.A_Passenger = A_Passenger
        allVar.A_Driver = A_Driver
        allVar.A_Pedestrian = A_Pedestrian
        allVar.A_LapBeltUsed = A_LapBeltUsed
        allVar.A_ShoulderBeltUsed = A_ShoulderBeltUsed
        allVar.A_HelmetWorn = A_HelmetWorn
        allVar.A_AirbagDeploy = A_AirbagDeploy
        allVar.A_HitRun = A_HitRun
        allVar.A_NonHighway = A_NonHighway
        allVar.A_VehicleType = A_VehicleType
        allVar.S_LCWLTW = S_LCWLTW
        allVar.S_ALC = S_ALC
        allVar.S_CDM = S_CDM
        allVar.S_DMHP = S_DMHP
        allVar.S_TMI = S_TMI
        allVar.S_FP = S_FP
        allVar.S_PHP = S_PHP
        allVar.S_JP = S_JP
        allVar.S_LoE = S_LoE
        allVar.S_RD = S_RD
        allVar.S_IPP = S_IPP
        allVar.S_IPL = S_IPL
        allVar.S_IPTL = S_IPTL
        allVar.S_IPV = S_IPV
        allVar.S_ORP = S_ORP
        allVar.S_SP = S_SP
        allVar.S_AP = S_AP
        allVar.S_SubP = S_SubP
        allVar.S_RCP = S_RCP
        allVar.S_LegP = S_LegP
        allVar.S_RSRF = S_RSRF
        allVar.S_ODRF = S_ODRF
        allVar.S_PVC = S_PVC
        allVar.S_VVC = S_VVC
        allVar.S_Other = S_Other
        allVar.S_LSN = S_LSN
        allVar.S_DADBS = S_DADBS
        allVar.S_HSA = S_HSA
        allVar.S_ThS = S_ThS
        allVar.S_Note = S_Note
        allVar.H_Brawl = H_Brawl
        allVar.H_DrugRel = H_DrugRel
        allVar.H_IPL = H_IPL
        allVar.H_IPTL = H_IPTL
        allVar.H_IPP = H_IPP
        allVar.H_OtherRel = H_OtherRel
        allVar.H_IAC = H_IAC
        allVar.H_AWAC = H_AWAC
        allVar.H_AOMP = H_AOMP
        allVar.H_GangRel = H_GangRel
        allVar.H_Jealousy = H_Jealousy
        allVar.H_JustHom = H_JustHom
        allVar.H_OthAAC = H_OthAAC
        allVar.H_HC = H_HC
        allVar.H_IB = H_IB
        allVar.H_RandoV = H_RandoV
        allVar.H_TerrorA = H_TerrorA
        allVar.H_Other = H_Other
        allVar.H_MercKill = H_MercKill
        allVar.H_ChildFat = H_ChildFat
        allVar.H_InfantIn = H_InfantIn
        allVar.H_ChildWitnI = H_ChildWitnI
        allVar.H_ChPSN = H_ChPSN
        allVar.H_VWAPOOD = H_VWAPOOD
        allVar.H_ThreatenedHom = H_ThreatenedHom
        allVar.H_WhoWasThr = H_WhoWasThr
        allVar.H_TheVicis = H_TheVicis
        allVar.O_DrugPara = O_DrugPara
        allVar.O_DrugField = O_DrugField
        allVar.O_WitnessPres = O_WitnessPres
        allVar.O_PrevOver = O_PrevOver
        allVar.O_DrugAbuseProb = O_DrugAbuseProb
        allVar.O_TreatForSubAbu = O_TreatForSubAbu
        allVar.O_NalOpAnAd = O_NalOpAnAd
        allVar.O_ChrPain = O_ChrPain
        allVar.O_CurrPainTreat = O_CurrPainTreat
        allVar.O_HisIncar = O_HisIncar
        allVar.O_CurrIncar = O_CurrIncar
        allVar.O_RecRel = O_RecRel
        allVar.O_Prev = O_Prev
        allVar.O_CurrDepMood = O_CurrDepMood
        allVar.O_CurrMenHelProb = O_CurrMenHelProb
        allVar.O_DiagMenHealthProb = O_DiagMenHealthProb
        allVar.O_TreatMenHealth = O_TreatMenHealth */
    }
    @IBAction func Next_2(_ sender: UIButton) {
        
    }
    @IBAction func Next_3(_ sender: UIButton) {
       
    }
    @IBAction func Next_4(_ sender: UIButton) {
 
    }
    @IBAction func Next_5(_ sender: UIButton) {
        
    }
    @IBAction func Next_6(_ sender: UIButton) {
        
    }
    @IBAction func Next_7(_ sender: UIButton) {
        
    }
    
    @IBAction func Save_1(_ sender: UIButton) {
        allVar.N_NursingHome = N_NursingHome
        allVar.N_SIDS = N_SIDS
        allVar.N_Smoker = N_Smoker
        allVar.N_Diabetes = N_Diabetes
        allVar.A_Fall = A_Fall
        allVar.A_Hunting = A_Hunting
        allVar.A_PlayingWG = A_PlayingWG
        allVar.A_Load = A_Load
        allVar.A_MotorVehicle = A_MotorVehicle
        allVar.A_TargetShooting = A_TargetShooting
        allVar.A_SelfDefenseShooting = A_SelfDefenseShooting
        allVar.A_ShowingGun = A_ShowingGun
        goToHomePage()
    }
    @IBAction func Save_2(_ sender: UIButton) {
        allVar.A_CleanGun = A_CleanGun
        allVar.A_GunDefect = A_GunDefect
        allVar.A_CelebFiring = A_CelebFiring
        allVar.A_Other = A_Other
        allVar.A_MVCrash = A_MVCrash
        allVar.A_Passenger = A_Passenger
        allVar.A_Driver = A_Driver
        allVar.A_Pedestrian = A_Pedestrian
        allVar.A_LapBeltUsed = A_LapBeltUsed
        allVar.A_ShoulderBeltUsed = A_ShoulderBeltUsed
        allVar.A_HelmetWorn = A_HelmetWorn
        allVar.A_AirbagDeploy = A_AirbagDeploy
        allVar.A_HitRun = A_HitRun
        allVar.A_NonHighway = A_NonHighway
        allVar.A_VehicleType = A_VehicleType
        goToHomePage()
    }
    @IBAction func Save_3(_ sender: UIButton) {
        allVar.S_LCWLTW = S_LCWLTW
        allVar.S_ALC = S_ALC
        allVar.S_CDM = S_CDM
        allVar.S_DMHP = S_DMHP
        allVar.S_TMI = S_TMI
        allVar.S_FP = S_FP
        allVar.S_PHP = S_PHP
        allVar.S_JP = S_JP
        allVar.S_LoE = S_LoE
        allVar.S_RD = S_RD
        allVar.S_IPP = S_IPP
        allVar.S_IPL = S_IPL
        allVar.S_IPTL = S_IPTL
        allVar.S_IPV = S_IPV
        allVar.S_ORP = S_ORP
        goToHomePage()
    }
    @IBAction func Save_4(_ sender: UIButton) {
        allVar.S_SP = S_SP
        allVar.S_AP = S_AP
        allVar.S_SubP = S_SubP
        allVar.S_RCP = S_RCP
        allVar.S_LegP = S_LegP
        allVar.S_RSRF = S_RSRF
        allVar.S_ODRF = S_ODRF
        allVar.S_PVC = S_PVC
        allVar.S_VVC = S_VVC
        allVar.S_Other = S_Other
        allVar.S_LSN = S_LSN
        allVar.S_DADBS = S_DADBS
        allVar.S_HSA = S_HSA
        allVar.S_ThS = S_ThS
        allVar.S_Note = S_Note
        goToHomePage()
    }
    @IBAction func Save_5(_ sender: UIButton) {
        allVar.H_Brawl = H_Brawl
        allVar.H_DrugRel = H_DrugRel
        allVar.H_IPL = H_IPL
        allVar.H_IPTL = H_IPTL
        allVar.H_IPP = H_IPP
        allVar.H_OtherRel = H_OtherRel
        allVar.H_IAC = H_IAC
        allVar.H_AWAC = H_AWAC
        allVar.H_AOMP = H_AOMP
        allVar.H_GangRel = H_GangRel
        allVar.H_Jealousy = H_Jealousy
        allVar.H_JustHom = H_JustHom
        allVar.H_OthAAC = H_OthAAC
        allVar.H_HC = H_HC
        allVar.H_IB = H_IB
        allVar.H_RandoV = H_RandoV
        goToHomePage()
    }
    @IBAction func Save_6(_ sender: UIButton) {
        allVar.H_TerrorA = H_TerrorA
        allVar.H_Other = H_Other
        allVar.H_MercKill = H_MercKill
        allVar.H_ChildFat = H_ChildFat
        allVar.H_InfantIn = H_InfantIn
        allVar.H_ChildWitnI = H_ChildWitnI
        allVar.H_ChPSN = H_ChPSN
        allVar.H_VWAPOOD = H_VWAPOOD
        allVar.H_ThreatenedHom = H_ThreatenedHom
        allVar.H_WhoWasThr = H_WhoWasThr
        allVar.H_TheVicis = H_TheVicis
        allVar.O_DrugPara = O_DrugPara
        allVar.O_DrugField = O_DrugField
        allVar.O_WitnessPres = O_WitnessPres
        allVar.O_PrevOver = O_PrevOver
        allVar.O_DrugAbuseProb = O_DrugAbuseProb
        goToHomePage()
    }
    @IBAction func Save_7(_ sender: UIButton) {
        allVar.O_TreatForSubAbu = O_TreatForSubAbu
        allVar.O_NalOpAnAd = O_NalOpAnAd
        allVar.O_ChrPain = O_ChrPain
        allVar.O_CurrPainTreat = O_CurrPainTreat
        allVar.O_HisIncar = O_HisIncar
        allVar.O_CurrIncar = O_CurrIncar
        allVar.O_RecRel = O_RecRel
        allVar.O_Prev = O_Prev
        allVar.O_CurrDepMood = O_CurrDepMood
        allVar.O_CurrMenHelProb = O_CurrMenHelProb
        allVar.O_DiagMenHealthProb = O_DiagMenHealthProb
        allVar.O_TreatMenHealth = O_TreatMenHealth
        goToHomePage()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView2?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView3?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView4?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView5?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView6?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView7?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.A_VehicleType?.delegate = self
        self.S_DMHP?.delegate = self
        self.S_Note?.delegate = self
        self.H_WhoWasThr?.delegate = self
        self.H_TheVicis?.delegate = self
        self.O_DrugField?.delegate = self
        self.O_DiagMenHealthProb?.delegate = self
     
        if allVar.isPending || allVar.isPublished{
            if let bool = allVar.N_NursingHome?.isOn{N_NursingHome?.setOn(bool,animated: bool)}
            if let bool = allVar.N_SIDS?.isOn{N_SIDS?.setOn(bool,animated: bool)}
            if let bool = allVar.N_Smoker?.isOn{N_Smoker?.setOn(bool,animated: bool)}
            if let bool = allVar.N_Diabetes?.isOn{N_Diabetes?.setOn(bool,animated: bool)}
            if let bool = allVar.N_Heart?.isOn{N_Heart?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Fall?.isOn{A_Fall?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Hunting?.isOn{A_Hunting?.setOn(bool,animated: bool)}
            if let bool = allVar.A_PlayingWG?.isOn{A_PlayingWG?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Load?.isOn{A_Load?.setOn(bool,animated: bool)}
            if let bool = allVar.A_MotorVehicle?.isOn{A_MotorVehicle?.setOn(bool,animated: bool)}
            if let bool = allVar.A_TargetShooting?.isOn{A_TargetShooting?.setOn(bool,animated: bool)}
            if let bool = allVar.A_SelfDefenseShooting?.isOn{A_SelfDefenseShooting?.setOn(bool,animated: bool)}
            if let bool = allVar.A_ShowingGun?.isOn{A_ShowingGun?.setOn(bool,animated: bool)}
            if let bool = allVar.A_CleanGun?.isOn{A_CleanGun?.setOn(bool,animated: bool)}
            if let bool = allVar.A_GunDefect?.isOn{A_GunDefect?.setOn(bool,animated: bool)}
            if let bool = allVar.A_CelebFiring?.isOn{A_CelebFiring?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Other?.isOn{A_Other?.setOn(bool,animated: bool)}
            if let bool = allVar.A_MVCrash?.isOn{A_MVCrash?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Passenger?.isOn{A_Passenger?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Driver?.isOn{A_Driver?.setOn(bool,animated: bool)}
            if let bool = allVar.A_Pedestrian?.isOn{A_Pedestrian?.setOn(bool,animated: bool)}
            if let bool = allVar.A_LapBeltUsed?.isOn{A_LapBeltUsed?.setOn(bool,animated: bool)}
            if let bool = allVar.A_ShoulderBeltUsed?.isOn{A_ShoulderBeltUsed?.setOn(bool,animated: bool)}
            if let bool = allVar.A_HelmetWorn?.isOn{A_HelmetWorn?.setOn(bool,animated: bool)}
            if let bool = allVar.A_AirbagDeploy?.isOn{A_AirbagDeploy?.setOn(bool,animated: bool)}
            if let bool = allVar.A_HitRun?.isOn{A_HitRun?.setOn(bool,animated: bool)}
            if let bool = allVar.A_NonHighway?.isOn{A_NonHighway?.setOn(bool,animated: bool)}
            if let bool = allVar.S_LCWLTW?.isOn{S_LCWLTW?.setOn(bool,animated: bool)}
            if let bool = allVar.S_ALC?.isOn{S_ALC?.setOn(bool,animated: bool)}
            if let bool = allVar.S_CDM?.isOn{S_CDM?.setOn(bool,animated: bool)}
            if let bool = allVar.S_TMI?.isOn{S_TMI?.setOn(bool,animated: bool)}
            if let bool = allVar.S_FP?.isOn{S_FP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_PHP?.isOn{S_PHP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_JP?.isOn{S_JP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_LoE?.isOn{S_LoE?.setOn(bool,animated: bool)}
            if let bool = allVar.S_RD?.isOn{S_RD?.setOn(bool,animated: bool)}
            if let bool = allVar.S_IPP?.isOn{S_IPP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_IPL?.isOn{S_IPL?.setOn(bool,animated: bool)}
            if let bool = allVar.S_IPTL?.isOn{S_IPTL?.setOn(bool,animated: bool)}
            if let bool = allVar.S_IPV?.isOn{S_IPV?.setOn(bool,animated: bool)}
            if let bool = allVar.S_ORP?.isOn{S_ORP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_SP?.isOn{S_SP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_AP?.isOn{S_AP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_SubP?.isOn{S_SubP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_RCP?.isOn{S_RCP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_LegP?.isOn{S_LegP?.setOn(bool,animated: bool)}
            if let bool = allVar.S_RSRF?.isOn{S_RSRF?.setOn(bool,animated: bool)}
            if let bool = allVar.S_ODRF?.isOn{S_ODRF?.setOn(bool,animated: bool)}
            if let bool = allVar.S_PVC?.isOn{S_PVC?.setOn(bool,animated: bool)}
            if let bool = allVar.S_VVC?.isOn{S_VVC?.setOn(bool,animated: bool)}
            if let bool = allVar.S_Other?.isOn{S_Other?.setOn(bool,animated: bool)}
            if let bool = allVar.S_LSN?.isOn{S_LSN?.setOn(bool,animated: bool)}
            if let bool = allVar.S_DADBS?.isOn{S_DADBS?.setOn(bool,animated: bool)}
            if let bool = allVar.S_HSA?.isOn{S_HSA?.setOn(bool,animated: bool)}
            if let bool = allVar.S_ThS?.isOn{S_ThS?.setOn(bool,animated: bool)}
            if let bool = allVar.H_Brawl?.isOn{H_Brawl?.setOn(bool,animated: bool)}
            if let bool = allVar.H_DrugRel?.isOn{H_DrugRel?.setOn(bool,animated: bool)}
            if let bool = allVar.H_IPL?.isOn{H_IPL?.setOn(bool,animated: bool)}
            if let bool = allVar.H_IPTL?.isOn{H_IPTL?.setOn(bool,animated: bool)}
            if let bool = allVar.H_IPP?.isOn{H_IPP?.setOn(bool,animated: bool)}
            if let bool = allVar.H_OtherRel?.isOn{H_OtherRel?.setOn(bool,animated: bool)}
            if let bool = allVar.H_IAC?.isOn{H_IAC?.setOn(bool,animated: bool)}
            if let bool = allVar.H_AWAC?.isOn{H_AWAC?.setOn(bool,animated: bool)}
            if let bool = allVar.H_AOMP?.isOn{H_AOMP?.setOn(bool,animated: bool)}
            if let bool = allVar.H_GangRel?.isOn{H_GangRel?.setOn(bool,animated: bool)}
            if let bool = allVar.H_Jealousy?.isOn{H_Jealousy?.setOn(bool,animated: bool)}
            if let bool = allVar.H_JustHom?.isOn{H_JustHom?.setOn(bool,animated: bool)}
            if let bool = allVar.H_OthAAC?.isOn{H_OthAAC?.setOn(bool,animated: bool)}
            if let bool = allVar.H_HC?.isOn{H_HC?.setOn(bool,animated: bool)}
            if let bool = allVar.H_IB?.isOn{H_IB?.setOn(bool,animated: bool)}
            if let bool = allVar.H_RandoV?.isOn{H_RandoV?.setOn(bool,animated: bool)}
            if let bool = allVar.H_TerrorA?.isOn{H_TerrorA?.setOn(bool,animated: bool)}
            if let bool = allVar.H_Other?.isOn{H_Other?.setOn(bool,animated: bool)}
            if let bool = allVar.H_MercKill?.isOn{H_MercKill?.setOn(bool,animated: bool)}
            if let bool = allVar.H_ChildFat?.isOn{H_ChildFat?.setOn(bool,animated: bool)}
            if let bool = allVar.H_InfantIn?.isOn{H_InfantIn?.setOn(bool,animated: bool)}
            if let bool = allVar.H_ChildWitnI?.isOn{H_ChildWitnI?.setOn(bool,animated: bool)}
            if let bool = allVar.H_ChPSN?.isOn{H_ChPSN?.setOn(bool,animated: bool)}
            if let bool = allVar.H_VWAPOOD?.isOn{H_VWAPOOD?.setOn(bool,animated: bool)}
            if let bool = allVar.H_ThreatenedHom?.isOn{H_ThreatenedHom?.setOn(bool,animated: bool)}
            if let bool = allVar.O_DrugPara?.isOn{O_DrugPara?.setOn(bool,animated: bool)}
            if let bool = allVar.O_WitnessPres?.isOn{O_WitnessPres?.setOn(bool,animated: bool)}
            if let bool = allVar.O_PrevOver?.isOn{O_PrevOver?.setOn(bool,animated: bool)}
            if let bool = allVar.O_DrugAbuseProb?.isOn{O_DrugAbuseProb?.setOn(bool,animated: bool)}
            if let bool = allVar.O_AlcoholAbuseProblem?.isOn{O_AlcoholAbuseProblem?.setOn(bool,animated: bool)}
            if let bool = allVar.O_TreatForSubAbu?.isOn{O_TreatForSubAbu?.setOn(bool,animated: bool)}
            if let bool = allVar.O_NalOpAnAd?.isOn{O_NalOpAnAd?.setOn(bool,animated: bool)}
            if let bool = allVar.O_ChrPain?.isOn{O_ChrPain?.setOn(bool,animated: bool)}
            if let bool = allVar.O_CurrPainTreat?.isOn{O_CurrPainTreat?.setOn(bool,animated: bool)}
            if let bool = allVar.O_HisIncar?.isOn{O_HisIncar?.setOn(bool,animated: bool)}
            if let bool = allVar.O_CurrIncar?.isOn{O_CurrIncar?.setOn(bool,animated: bool)}
            if let bool = allVar.O_RecRel?.isOn{O_RecRel?.setOn(bool,animated: bool)}
            if let bool = allVar.O_Prev?.isOn{O_Prev?.setOn(bool,animated: bool)}
            if let bool = allVar.O_CurrDepMood?.isOn{O_CurrDepMood?.setOn(bool,animated: bool)}
            if let bool = allVar.O_CurrMenHelProb?.isOn{O_CurrMenHelProb?.setOn(bool,animated: bool)}
            if let bool = allVar.O_TreatMenHealth?.isOn{O_TreatMenHealth?.setOn(bool,animated: bool)}
            A_VehicleType?.text = allVar.A_VehicleType?.text
            S_DMHP?.text = allVar.S_DMHP?.text
            S_Note?.text = allVar.S_Note?.text
            H_WhoWasThr?.text = allVar.H_WhoWasThr?.text
            H_TheVicis?.text = allVar.H_TheVicis?.text
            O_DrugField?.text = allVar.O_DrugField?.text
            O_DiagMenHealthProb?.text = allVar.O_DiagMenHealthProb?.text
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    
}
