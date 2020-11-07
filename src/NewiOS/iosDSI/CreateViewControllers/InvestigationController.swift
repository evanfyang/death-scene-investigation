//
//  InvestigationController.swift
//  iosDSI
//
//  Created by DSI Group 2 on 10/21/20.
//

import UIKit

class InvestigationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // outlet declarations
    @IBOutlet weak var CaseNum: UITextField!
    @IBOutlet weak var Version: UITextField!
    @IBOutlet weak var Evidence_Collected: UITextField!
    @IBOutlet weak var Collected_By: UITextField!
    @IBOutlet weak var Date: UIDatePicker!
    @IBOutlet weak var Time: UIDatePicker!
    @IBOutlet weak var Photo: UISwitch!
    @IBOutlet weak var Toxicology_Collected: UISwitch!
    @IBOutlet weak var Blood: UISwitch!
    @IBOutlet weak var Urine: UISwitch!
    @IBOutlet weak var Virteous: UISwitch!
    @IBOutlet weak var Ems_At_Scene: UISwitch!
    @IBOutlet weak var Victim_Seen: UISwitch!
    @IBOutlet weak var Admitted: UISwitch!
    @IBOutlet weak var Attending_PHN: UISwitch!
    @IBOutlet weak var Name_PH: UITextField!
    @IBOutlet weak var Number_PH: UITextField!
    @IBOutlet weak var Medical_History: UITextField!
    @IBOutlet weak var Diabetes: UISwitch!
    @IBOutlet weak var Medications: UITextField!
    @IBOutlet weak var Medical_Record_Req: UISwitch!
    @IBOutlet weak var Koda_Notified: UISwitch!
    @IBOutlet weak var Organ_Donate: UISwitch!
    @IBOutlet weak var Tissue_Donate: UISwitch!
    @IBOutlet weak var Cornea_Donate: UISwitch!
    @IBOutlet weak var Police_Dep_Notif: UISwitch!
    @IBOutlet weak var Officer: UITextField!
    @IBOutlet weak var KY_Marsh_Notif: UISwitch!
    @IBOutlet weak var OSHA_Req: UISwitch!
    @IBOutlet weak var Coroners_Inq: UISwitch!
    @IBOutlet weak var Autopsy: UISwitch!
    @IBOutlet weak var Medical_Examiner: UITextField!
    @IBOutlet weak var Death_Certificate_Signed: UISwitch!
    @IBOutlet weak var Signed_By: UITextField!
    @IBOutlet weak var Alcohol_Use_Sus: UISwitch!
    @IBOutlet weak var Drug_Use_Sus: UISwitch!
    @IBOutlet weak var Alcohol: UISwitch!
    @IBOutlet weak var Alcohol_Field: UITextField!
    @IBOutlet weak var Amphe: UISwitch!
    @IBOutlet weak var Amphe_Field: UITextField!
    @IBOutlet weak var Barbitua: UISwitch!
    @IBOutlet weak var Barbituat_Field: UITextField!
    @IBOutlet weak var Benzo: UISwitch!
    @IBOutlet weak var Benzo_Field: UITextField!
    @IBOutlet weak var Cannabinoids: UISwitch!
    @IBOutlet weak var Cannab_Field: UITextField!
    @IBOutlet weak var Cocaine: UISwitch!
    @IBOutlet weak var Cocaine_Field: UITextField!
    @IBOutlet weak var Fent_Field: UITextField!
    @IBOutlet weak var Methadone: UISwitch!
    @IBOutlet weak var Methadone_Field: UITextField!
    @IBOutlet weak var Opiates: UISwitch!
    @IBOutlet weak var Opiates_Field: UITextField!
    @IBOutlet weak var Oxycodone: UISwitch!
    @IBOutlet weak var Oxycodone_Field: UITextField!
    @IBOutlet weak var Propo: UISwitch!
    @IBOutlet weak var Propo_Field: UITextField!
    @IBOutlet weak var Analgesics: UISwitch!
    @IBOutlet weak var Analgesics_Field: UITextField!
    @IBOutlet weak var Bupren: UISwitch!
    @IBOutlet weak var Bupren_Field: UITextField!
    @IBOutlet weak var Anticonv: UISwitch!
    @IBOutlet weak var Anti_conv_Field: UITextField!
    @IBOutlet weak var Antidep: UISwitch!
    @IBOutlet weak var Antdep_field: UITextField!
    @IBOutlet weak var Antipsycho: UISwitch!
    @IBOutlet weak var Antipsycho_fields: UITextField!
    @IBOutlet weak var Other: UISwitch!
    @IBOutlet weak var Other_Field: UITextField!
    @IBOutlet weak var Body_Transported: UISwitch!
    @IBOutlet weak var Cremation: UISwitch!
    @IBOutlet weak var Cremation_Permit: UISwitch!
    @IBOutlet weak var Body_Released_To: UITextField!
    @IBOutlet weak var Cost_of_Transport: UITextField!
    @IBOutlet weak var Funeral_Home: UITextField!
    @IBOutlet weak var Phone_Number_1: UITextField!
    @IBOutlet weak var Head: UISwitch!
    @IBOutlet weak var Neck: UISwitch!
    @IBOutlet weak var Face: UISwitch!
    @IBOutlet weak var Thorax: UISwitch!
    @IBOutlet weak var Abdo_LB: UISwitch!
    @IBOutlet weak var Spine: UISwitch!
    @IBOutlet weak var Upper_Ex: UISwitch!
    @IBOutlet weak var Lower_Ex: UISwitch!
    @IBOutlet weak var Unknown: UISwitch!
    @IBOutlet weak var Additional_Wounds: UISwitch!
    @IBOutlet weak var Firearm_Type: UITextField!
    @IBOutlet weak var Weapon_NF: UITextField!
    @IBOutlet weak var Other_Firearm: UITextField!
    @IBOutlet weak var Firearm_Recov: UISwitch!
    @IBOutlet weak var Casings_Recov: UISwitch!
    @IBOutlet weak var Firearm_SN: UITextField!
    @IBOutlet weak var Caliber: UITextField!
    @IBOutlet weak var Gauge: UITextField!
    @IBOutlet weak var Firearm_Owner: UITextField!
    @IBOutlet weak var Firearm_Storage: UITextField!
    @IBOutlet weak var Gunshot_Residue: UITextField!
    @IBOutlet weak var Dominant_Hand: UITextField!
    @IBOutlet weak var Type_of_Amm: UITextField!
    @IBOutlet weak var Number_Of_Shells: UITextField!
    
    // the code for the button
    @IBAction func NextButton(_ sender: UIButton) {
        var Valid = true
        
        // validation
        if ( CaseNum.text! == "" ) { Valid = false }
        if ( Version.text! == "" ) { Valid = false }
        if ( Evidence_Collected.text! == "" ) { Valid = false }
        if ( Collected_By.text! == "" ) { Valid = false }
        if ( Date.date == tempDate ) { Valid = false }
        if ( Time.date == tempDate ) { Valid = false }
        if ( Name_PH.text! == "" ) { Valid = false }
        if ( Number_PH.text! == "" ) { Valid = false }
        if ( Medical_History.text! == "" ) { Valid = false }
        if ( Medications.text! == "" ) { Valid = false }
        if ( Officer.text! == "" ) { Valid = false }
        if ( Medical_Examiner.text! == "" ) { Valid = false }
        if ( Signed_By.text! == "" ) { Valid = false }
        if ( Alcohol_Field.text! == "" ) { Valid = false }
        if ( Amphe_Field.text! == "" ) { Valid = false }
        if ( Barbituat_Field.text! == "" ) { Valid = false }
        if ( Benzo_Field.text! == "" ) { Valid = false }
        if ( Cannab_Field.text! == "" ) { Valid = false }
        if ( Cocaine_Field.text! == "" ) { Valid = false }
        if ( Fent_Field.text! == "" ) { Valid = false }
        if ( Methadone_Field.text! == "" ) { Valid = false }
        if ( Opiates_Field.text! == "" ) { Valid = false }
        if ( Oxycodone_Field.text! == "" ) { Valid = false }
        if ( Propo_Field.text! == "" ) { Valid = false }
        if ( Analgesics_Field.text! == "" ) { Valid = false }
        if ( Bupren_Field.text! == "" ) { Valid = false }
        if ( Anti_conv_Field.text! == "" ) { Valid = false }
        if ( Antdep_field.text! == "" ) { Valid = false }
        if ( Antipsycho_fields.text! == "" ) { Valid = false }
        if ( Other_Field.text! == "" ) { Valid = false }
        if ( Body_Released_To.text! == "" ) { Valid = false }
        if ( Cost_of_Transport.text! == "" ) { Valid = false }
        if ( Funeral_Home.text! == "" ) { Valid = false }
        if ( Phone_Number_1.text! == "" ) { Valid = false }
        if ( Firearm_Type.text! == "" ) { Valid = false }
        if ( Weapon_NF.text! == "" ) { Valid = false }
        if ( Other_Firearm.text! == "" ) { Valid = false }
        if ( Firearm_SN.text! == "" ) { Valid = false }
        if ( Caliber.text! == "" ) { Valid = false }
        if ( Gauge.text! == "" ) { Valid = false }
        if ( Firearm_Owner.text! == "" ) { Valid = false }
        if ( Firearm_Storage.text! == "" ) { Valid = false }
        if ( Gunshot_Residue.text! == "" ) { Valid = false }
        if ( Dominant_Hand.text! == "" ) { Valid = false }
        if ( Type_of_Amm.text! == "" ) { Valid = false }
        if ( Number_Of_Shells.text! == "" ) { Valid = false }
        
        // if validation is succsessful send to storage
        if Valid {
            Storage.Investigation.CaseNum = CaseNum.text!
            Storage.Investigation.Version = Version.text!
            Storage.Investigation.Evidence_Collected = Evidence_Collected.text!
            Storage.Investigation.Collected_By = Collected_By.text!
            Storage.Investigation.Date = Date.date
            Storage.Investigation.Time = Time.date
            Storage.Investigation.Name_PH = Name_PH.text!
            Storage.Investigation.Number_PH = Number_PH.text!
            Storage.Investigation.Medical_History = Medical_History.text!
            Storage.Investigation.Medications = Medications.text!
            Storage.Investigation.Officer = Officer.text!
            Storage.Investigation.Medical_Examiner = Medical_Examiner.text!
            Storage.Investigation.Signed_By = Signed_By.text!
            Storage.Investigation.Alcohol_Field = Alcohol_Field.text!
            Storage.Investigation.Amphe_Field = Amphe_Field.text!
            Storage.Investigation.Barbituat_Field = Barbituat_Field.text!
            Storage.Investigation.Benzo_Field = Benzo_Field.text!
            Storage.Investigation.Cannab_Field = Cannab_Field.text!
            Storage.Investigation.Cocaine_Field = Cocaine_Field.text!
            Storage.Investigation.Fent_Field = Fent_Field.text!
            Storage.Investigation.Methadone_Field = Methadone_Field.text!
            Storage.Investigation.Opiates_Field = Opiates_Field.text!
            Storage.Investigation.Oxycodone_Field = Oxycodone_Field.text!
            Storage.Investigation.Propo_Field = Propo_Field.text!
            Storage.Investigation.Analgesics_Field = Analgesics_Field.text!
            Storage.Investigation.Bupren_Field = Bupren_Field.text!
            Storage.Investigation.Anti_conv_Field = Anti_conv_Field.text!
            Storage.Investigation.Antdep_field = Antdep_field.text!
            Storage.Investigation.Antipsycho_fields = Antipsycho_fields.text!
            Storage.Investigation.Other_Field = Other_Field.text!
            Storage.Investigation.Body_Released_To = Body_Released_To.text!
            Storage.Investigation.Cost_of_Transport = Cost_of_Transport.text!
            Storage.Investigation.Funeral_Home = Funeral_Home.text!
            Storage.Investigation.Phone_Number_1 = Phone_Number_1.text!
            Storage.Investigation.Firearm_Type = Firearm_Type.text!
            Storage.Investigation.Weapon_NF = Weapon_NF.text!
            Storage.Investigation.Other_Firearm = Other_Firearm.text!
            Storage.Investigation.Firearm_SN = Firearm_SN.text!
            Storage.Investigation.Caliber = Caliber.text!
            Storage.Investigation.Gauge = Gauge.text!
            Storage.Investigation.Firearm_Owner = Firearm_Owner.text!
            Storage.Investigation.Firearm_Storage = Firearm_Storage.text!
            Storage.Investigation.Gunshot_Residue = Gunshot_Residue.text!
            Storage.Investigation.Dominant_Hand = Dominant_Hand.text!
            Storage.Investigation.Type_of_Amm = Type_of_Amm.text!
            Storage.Investigation.Number_Of_Shells = Number_Of_Shells.text!
            
            Storage.Investigation.Photo = Photo.isOn
            Storage.Investigation.Toxicology_Collected = Toxicology_Collected.isOn
            Storage.Investigation.Blood = Blood.isOn
            Storage.Investigation.Urine = Urine.isOn
            Storage.Investigation.Virteous = Virteous.isOn
            Storage.Investigation.Ems_At_Scene = Ems_At_Scene.isOn
            Storage.Investigation.Victim_Seen = Victim_Seen.isOn
            Storage.Investigation.Admitted = Admitted.isOn
            Storage.Investigation.Attending_PHN = Attending_PHN.isOn
            Storage.Investigation.Diabetes = Diabetes.isOn
            Storage.Investigation.Medical_Record_Req = Medical_Record_Req.isOn
            Storage.Investigation.Koda_Notified = Koda_Notified.isOn
            Storage.Investigation.Organ_Donate = Organ_Donate.isOn
            Storage.Investigation.Tissue_Donate = Tissue_Donate.isOn
            Storage.Investigation.Cornea_Donate = Cornea_Donate.isOn
            Storage.Investigation.Police_Dep_Notif = Police_Dep_Notif.isOn
            Storage.Investigation.KY_Marsh_Notif = KY_Marsh_Notif.isOn
            Storage.Investigation.OSHA_Req = OSHA_Req.isOn
            Storage.Investigation.Coroners_Inq = Coroners_Inq.isOn
            Storage.Investigation.Autopsy = Autopsy.isOn
            Storage.Investigation.Death_Certificate_Signed = Death_Certificate_Signed.isOn
            Storage.Investigation.Alcohol_Use_Sus = Alcohol_Use_Sus.isOn
            Storage.Investigation.Drug_Use_Sus = Drug_Use_Sus.isOn
            Storage.Investigation.Alcohol = Alcohol.isOn
            Storage.Investigation.Amphe = Amphe.isOn
            Storage.Investigation.Barbitua = Barbitua.isOn
            Storage.Investigation.Benzo = Benzo.isOn
            Storage.Investigation.Cannabinoids = Cannabinoids.isOn
            Storage.Investigation.Cocaine = Cocaine.isOn
            Storage.Investigation.Methadone = Methadone.isOn
            Storage.Investigation.Opiates = Opiates.isOn
            Storage.Investigation.Oxycodone = Oxycodone.isOn
            Storage.Investigation.Propo = Propo.isOn
            Storage.Investigation.Analgesics = Analgesics.isOn
            Storage.Investigation.Bupren = Bupren.isOn
            Storage.Investigation.Anticonv = Anticonv.isOn
            Storage.Investigation.Antidep = Antidep.isOn
            Storage.Investigation.Antipsycho = Antipsycho.isOn
            Storage.Investigation.Other = Other.isOn
            Storage.Investigation.Body_Transported = Body_Transported.isOn
            Storage.Investigation.Cremation = Cremation.isOn
            Storage.Investigation.Cremation_Permit = Cremation_Permit.isOn
            Storage.Investigation.Head = Head.isOn
            Storage.Investigation.Neck = Neck.isOn
            Storage.Investigation.Face = Face.isOn
            Storage.Investigation.Thorax = Thorax.isOn
            Storage.Investigation.Abdo_LB = Abdo_LB.isOn
            Storage.Investigation.Spine = Spine.isOn
            Storage.Investigation.Upper_Ex = Upper_Ex.isOn
            Storage.Investigation.Lower_Ex = Lower_Ex.isOn
            Storage.Investigation.Unknown = Unknown.isOn
            Storage.Investigation.Additional_Wounds = Additional_Wounds.isOn
            Storage.Investigation.Firearm_Recov = Firearm_Recov.isOn
            Storage.Investigation.Casings_Recov = Casings_Recov.isOn
        }
    }   // close nextButton function
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        // copy this over to narrative controller
        let investigationURL = "https://statsqltest.as.uky.edu/edit_investigation.php"
        let investigationParams: Parameters = [
            "CaseNum" = Storage.Investigation.CaseNum,   
            "Version" = Storage.Investigation.Version,
            "Evidence_Collected" = Storage.Investigation.Evidence_Collected,
            "Collected_By" = Storage.Investigation.Collected_By,
            "Date" = Storage.Investigation.Date,            
            "Time" = Storage.Investigation.Time,            
            "Name_PH" = Storage.Investigation.Name_PH,
            "Number_PH" = Storage.Investigation.Number_PH,
            "Medical_History" = Storage.Investigation.Medical_History,
            "Medications" = Storage.Investigation.Medications,
            "Officer" = Storage.Investigation.Officer,
            "Medical_Examiner" = Storage.Investigation.Medical_Examiner,
            "Signed_By" = Storage.Investigation.Signed_By,
            "Alcohol_Field" = Storage.Investigation.Alcohol_Field,
            "Amphe_Field" = Storage.Investigation.Amphe_Field,
            "Barbituat_Field" = Storage.Investigation.Barbituat_Field,
            "Benzo_Field" = Storage.Investigation.Benzo_Field,
            "Cannab_Field" = Storage.Investigation.Cannab_Field,
            "Cocaine_Field" = Storage.Investigation.Cocaine_Field,
            "Fent_Field" = Storage.Investigation.Fent_Field,
            "Methadone_Field" = Storage.Investigation.Methadone_Field,
            "Opiates_Field" = Storage.Investigation.Opiates_Field,
            "Oxycodone_Field" = Storage.Investigation.Oxycodone_Field,
            "Propo_Field" = Storage.Investigation.Propo_Field,
            "Analgesics_Field" = Storage.Investigation.Analgesics_Field,
            "Bupren_Field" = Storage.Investigation.Bupren_Field,
            "Anti_conv_Field" = Storage.Investigation.Anti_conv_Field,
            "Antdep_field" = Storage.Investigation.Antdep_field,
            "Antipsycho_fields" = Storage.Investigation.Antipsycho_fields,
            "Other_Field" = Storage.Investigation.Other_Field,
            "Body_Released_To" = Storage.Investigation.Body_Released_To,
            "Cost_of_Transport" = Storage.Investigation.Cost_of_Transport,
            "Funeral_Home" = Storage.Investigation.Funeral_Home,
            "Phone_Number_1" = Storage.Investigation.Phone_Number_1,
            "Firearm_Type" = Storage.Investigation.Firearm_Type,
            "Weapon_NF" = Storage.Investigation.Weapon_NF,
            "Other_Firearm" = Storage.Investigation.Other_Firearm,
            "Firearm_SN" = Storage.Investigation.Firearm_SN,
            "Caliber" = Storage.Investigation.Caliber,
            "Gauge" = Storage.Investigation.Gauge,
            "Firearm_Owner" = Storage.Investigation.Firearm_Owner,
            "Firearm_Storage" = Storage.Investigation.Firearm_Storage,
            "Gunshot_Residue" = Storage.Investigation.Gunshot_Residue,            
            "Dominant_Hand" = Storage.Investigation.Dominant_Hand,
            "Type_of_Amm" = Storage.Investigation.Type_of_Amm,            
            "Number_Of_Shells" = Storage.Investigation.Number_Of_Shells,    
            "Photo" = Storage.Investigation.Photo,            
            "Toxicology_Collected" = Storage.Investigation.Toxicology_Collected,            
            "Blood" = Storage.Investigation.Blood,            
            "Urine" = Storage.Investigation.Urine,            
            "Virteous" = Storage.Investigation.Virteous,            
            "Ems_At_Scene" = Storage.Investigation.Ems_At_Scene,            
            "Victim_Seen" = Storage.Investigation.Victim_Seen,            
            "Admitted" = Storage.Investigation.Admitted,            
            "Attending_PHN" = Storage.Investigation.Attending_PHN,            
            "Diabetes" = Storage.Investigation.Diabetes,            
            "Medical_Record_Req" = Storage.Investigation.Medical_Record_Req,            
            "Koda_Notified" = Storage.Investigation.Koda_Notified,            
            "Organ_Donate" = Storage.Investigation.Organ_Donate,            
            "Tissue_Donate" = Storage.Investigation.Tissue_Donate,            
            "Cornea_Donate" = Storage.Investigation.Cornea_Donate,            
            "Police_Dep_Notif" = Storage.Investigation.Police_Dep_Notif,            
            "KY_Marsh_Notif" = Storage.Investigation.KY_Marsh_Notif,            
            "OSHA_Req" = Storage.Investigation.OSHA_Req,            
            "Coroners_Inq" = Storage.Investigation.Coroners_Inq,            
            "Autopsy" = Storage.Investigation.Autopsy,            
            "Death_Certificate_Signed" = Storage.Investigation.Death_Certificate_Signed,            
            "Alcohol_Use_Sus" = Storage.Investigation.Alcohol_Use_Sus,            
            "Drug_Use_Sus" = Storage.Investigation.Drug_Use_Sus,            
            "Alcohol" = Storage.Investigation.Alcohol,            
            "Amphe" = Storage.Investigation.Amphe,            
            "Barbitua" = Storage.Investigation.Barbitua,            
            "Benzo" = Storage.Investigation.Benzo,            
            "Cannabinoids" = Storage.Investigation.Cannabinoids,            
            "Cocaine" = Storage.Investigation.Cocaine,            
            "Methadone" = Storage.Investigation.Methadone,            
            "Opiates" = Storage.Investigation.Opiates,            
            "Oxycodone" = Storage.Investigation.Oxycodone,            
            "Propo" = Storage.Investigation.Propo,            
            "Analgesics" = Storage.Investigation.Analgesics,            
            "Bupren" = Storage.Investigation.Bupren,            
            "Anticonv" = Storage.Investigation.Anticonv,            
            "Antidep" = Storage.Investigation.Antidep,            
            "Antipsycho" = Storage.Investigation.Antipsycho,            
            "Other" = Storage.Investigation.Other,            
            "Body_Transported" = Storage.Investigation.Body_Transported,            
            "Cremation" = Storage.Investigation.Cremation,            
            "Cremation_Permit" = Storage.Investigation.Cremation_Permit,            
            "Head" = Storage.Investigation.Head,            
            "Neck" = Storage.Investigation.Neck,            
            "Face" = Storage.Investigation.Face,            
            "Thorax" = Storage.Investigation.Thorax,            
            "Abdo_LB" = Storage.Investigation.Abdo_LB,            
            "Spine" = Storage.Investigation.Spine,            
            "Upper_Ex" = Storage.Investigation.Upper_Ex,            
            "Lower_Ex" = Storage.Investigation.Lower_Ex,            
            "Unknown" = Storage.Investigation.Unknown,            
            "Additional_Wounds" = Storage.Investigation.Additional_Wounds,            
            "Firearm_Recov" = Storage.Investigation.Firearm_Recov,            
            "Casings_Recov" = Storage.Investigation.Casings_Recov
        ]

        Alamofire.request(investigationURL, method: .post, parameters: investigationParams).validate().responseString {
            response in
            if let result = response.result.value {
                let jsonData = result
                //if there is no error
                if(jsonData.contains("success")){
                    print("Investigation Post Success")
                }
                else {
                    print("Investigation Post Failure")
                }
            }
        }   // close the alamofire function
    }   // close the submit function
}
