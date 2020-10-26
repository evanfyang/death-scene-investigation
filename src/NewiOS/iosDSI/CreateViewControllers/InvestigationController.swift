//
//  InvestigationController.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/21/20.
//

import UIKit

class InvestigationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // code goes here
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
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        // button code goes here
    }
}
