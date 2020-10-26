//
//  Storage.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/12/20.
//

import Foundation

struct Storage {
    struct Create {
         static var CaseNumber = ""
         static var County = ""
    
        static func Clear() {
            CaseNumber = ""
            County = ""
        }
    }
    
    struct DeathSceneInvestigation {
         static var Deputy = ""
        
        static func Clear() {
            Deputy = ""
        }
    }
    
    struct Investigation {
        static var CaseNum = ""
        static var Version = ""
        static var Evidence_Collected = ""
        static var Collected_By = ""
        static var Date = 0
        static var Time = 0
        static var Photo = false
        static var Toxicology_Collected = false
        static var Blood = false
        static var Urine = false
        static var Virteous = false
        static var Ems_At_Scene = false
        static var Victim_Seen = false
        static var Admitted = false
        static var Attending_PHN = false
        static var Name_PH = ""
        static var Number_PH = ""
        static var Medical_History = ""
        static var Diabetes = false
        static var Medications = ""
        static var Medical_Record_Req = false
        static var Koda_Notified = false
        static var Organ_Donate = false
        static var Tissue_Donate = false
        static var Cornea_Donate = false
        static var Police_Dep_Notif = false
        static var Officer = ""
        static var KY_Marsh_Notif = false
        static var OSHA_Req = false
        static var Coroners_Inq = false
        static var Autopsy = false
        static var Medical_Examiner = ""
        static var Death_Certificate_Signed = false
        static var Signed_By = ""
        static var Alcohol_Use_Sus = false
        static var Drug_Use_Sus = false
        static var Alcohol = false
        static var Alcohol_Field = ""
        static var Amphe = false
        static var Amphe_Field = ""
        static var Barbitua = false
        static var Barbituat_Field = ""
        static var Benzo = false
        static var Benzo_Field = ""
        static var Cannabinoids = false
        static var Cannab_Field = ""
        static var Cocaine = false
        static var Cocaine_Field = ""
        static var Fent_Field = ""
        static var Methadone = false
        static var Methadone_Field = ""
        static var Opiates = false
        static var Opiates_Field = ""
        static var Oxycodone = false
        static var Oxycodone_Field = ""
        static var Propo = false
        static var Propo_Field = ""
        static var Analgesics = false
        static var Analgesics_Field = ""
        static var Bupren = false
        static var Bupren_Field = ""
        static var Anticonv = false
        static var Anti_conv_Field = ""
        static var Antidep = false
        static var Antdep_field = ""
        static var Antipsycho = false
        static var Antipsycho_fields = ""
        static var Other = false
        static var Other_Field = ""
        static var Body_Transported = false
        static var Cremation = false
        static var Cremation_Permit = false
        static var Body_Released_To = ""
        static var Cost_of_Transport = ""
        static var Funeral_Home = ""
        static var Phone_Number_1 = ""
        static var Head = false
        static var Neck = false
        static var Face = false
        static var Thorax = false
        static var Abdo_LB = false
        static var Spine = false
        static var Upper_Ex = false
        static var Lower_Ex = false
        static var Unknown = false
        static var Additional_Wounds = false
        static var Firearm_Type = ""
        static var Weapon_NF = ""
        static var Other_Firearm = ""
        static var Firearm_Recov = false
        static var Casings_Recov = false
        static var Firearm_SN = ""
        static var Caliber = ""
        static var Gauge = ""
        static var Firearm_Owner = ""
        static var Firearm_Storage = ""
        static var Gunshot_Residue = ""
        static var Dominant_Hand = ""
        static var Type_of_Amm = ""
        static var Number_Of_Shells = ""
        
        static func Clear() {
             CaseNum = ""
             Version = ""
             Evidence_Collected = ""
             Collected_By = ""
             Date = 0
             Time = 0
             Photo = false
             Toxicology_Collected = false
             Blood = false
             Urine = false
             Virteous = false
             Ems_At_Scene = false
             Victim_Seen = false
             Admitted = false
             Attending_PHN = false
             Name_PH = ""
             Number_PH = ""
             Medical_History = ""
             Diabetes = false
             Medications = ""
             Medical_Record_Req = false
             Koda_Notified = false
             Organ_Donate = false
             Tissue_Donate = false
             Cornea_Donate = false
             Police_Dep_Notif = false
             Officer = ""
             KY_Marsh_Notif = false
             OSHA_Req = false
             Coroners_Inq = false
             Autopsy = false
             Medical_Examiner = ""
             Death_Certificate_Signed = false
             Signed_By = ""
             Alcohol_Use_Sus = false
             Drug_Use_Sus = false
             Alcohol = false
             Alcohol_Field = ""
             Amphe = false
             Amphe_Field = ""
             Barbitua = false
             Barbituat_Field = ""
             Benzo = false
             Benzo_Field = ""
             Cannabinoids = false
             Cannab_Field = ""
             Cocaine = false
             Cocaine_Field = ""
             Fent_Field = ""
             Methadone = false
             Methadone_Field = ""
             Opiates = false
             Opiates_Field = ""
             Oxycodone = false
             Oxycodone_Field = ""
             Propo = false
             Propo_Field = ""
             Analgesics = false
             Analgesics_Field = ""
             Bupren = false
             Bupren_Field = ""
             Anticonv = false
             Anti_conv_Field = ""
             Antidep = false
             Antdep_field = ""
             Antipsycho = false
             Antipsycho_fields = ""
             Other = false
             Other_Field = ""
             Body_Transported = false
             Cremation = false
             Cremation_Permit = false
             Body_Released_To = ""
             Cost_of_Transport = ""
             Funeral_Home = ""
             Phone_Number_1 = ""
             Head = false
             Neck = false
             Face = false
             Thorax = false
             Abdo_LB = false
             Spine = false
             Upper_Ex = false
             Lower_Ex = false
             Unknown = false
             Additional_Wounds = false
             Firearm_Type = ""
             Weapon_NF = ""
             Other_Firearm = ""
             Firearm_Recov = false
             Casings_Recov = false
             Firearm_SN = ""
             Caliber = ""
             Gauge = ""
             Firearm_Owner = ""
             Firearm_Storage = ""
             Gunshot_Residue = ""
             Dominant_Hand = ""
             Type_of_Amm = ""
             Number_Of_Shells = ""

        }
    }
}
