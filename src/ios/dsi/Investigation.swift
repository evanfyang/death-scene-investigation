//
//  Investigation.swift
//  MDSI form
//
//  Created by Team Awesome on 4/7/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import SearchTextField

class Investigation: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == Fire_Type){
            return fire_val.count
            
        }
        else if (pickerView == NF_Type){
            return nf_val.count
            
        }
        else{
            return 1
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == Fire_Type){
            return fire_val[row]
            
        }
        else if (pickerView == NF_Type){
            return nf_val[row]
            
        }
        else{
            return "Error"
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == Fire_Type){
            Firearm_Type?.text = fire_val[row]
            view.endEditing(true)
        }
        else if(pickerView == NF_Type){
            Weapon_NF?.text = nf_val[row]
            view.endEditing(true)
        }
    }
    

    
    @IBOutlet weak var Evidence_Collected: UITextField!
    @IBOutlet weak var Collected_By: UITextField!
    @IBOutlet weak var Date: UITextField!
    @IBOutlet weak var Time: UITextField!
    @IBOutlet weak var Photo: UISwitch!
    @IBOutlet weak var Toxicology_Collected: UISwitch!
    @IBOutlet weak var Blood: UISwitch!
    @IBOutlet weak var Urine: UISwitch!
    @IBOutlet weak var Virteous: UISwitch!
    @IBOutlet weak var Ems_At_Scene: UISwitch!
    @IBOutlet weak var Victim_Seen: UISwitch!
    @IBOutlet weak var Admitted: UISwitch!
    @IBOutlet weak var Attending_PHN: UISwitch!
    @IBOutlet weak var Name_Ph: UITextField!
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
    @IBOutlet weak var Osha_Req: UISwitch!
    @IBOutlet weak var Coroners_Inq: UISwitch!
    @IBOutlet weak var Autopsy: UISwitch!
    @IBOutlet weak var Medical_Examiner: UITextField!
    @IBOutlet weak var Death_Certificate_Signed: UISwitch!
    @IBOutlet weak var Signed_By: UITextField!
    @IBOutlet weak var Alcohol_Use_Sus: UISwitch!
    @IBOutlet weak var Drug_Use_Sus: UISwitch!
    @IBOutlet weak var Alcohol: UISwitch!
    @IBOutlet weak var Alcohol_Field: SearchTextField?
    @IBOutlet weak var Amphe: UISwitch!
    @IBOutlet weak var Amph_Field: SearchTextField!
    @IBOutlet weak var Barbitua: UISwitch!
    @IBOutlet weak var Barbituat_field: SearchTextField?
    @IBOutlet weak var Benzo: UISwitch!
    @IBOutlet weak var Benzo_field: SearchTextField?
    @IBOutlet weak var Cannabinoids: UISwitch!
    @IBOutlet weak var Cannab_Field: SearchTextField?
    @IBOutlet weak var Cocaine: UISwitch!
    @IBOutlet weak var Cocaine_Field: SearchTextField?
    @IBOutlet weak var Fentanyl: UISwitch!
    @IBOutlet weak var Fent_Field: SearchTextField?
    @IBOutlet weak var Methadone: UISwitch!
    @IBOutlet weak var Methadone_Field: SearchTextField?
    @IBOutlet weak var Opiates: UISwitch!
    @IBOutlet weak var Opiates_Field: SearchTextField?
    @IBOutlet weak var Oxycodone: UISwitch!
    @IBOutlet weak var Oxycodone_Field: SearchTextField?
    @IBOutlet weak var Propo: UISwitch!
    @IBOutlet weak var Propo_field: SearchTextField?
    @IBOutlet weak var Analgesics: UISwitch!
    @IBOutlet weak var Analgesics_field: SearchTextField?
    @IBOutlet weak var Bupren: UISwitch!
    @IBOutlet weak var Bupren_Field: SearchTextField?
    @IBOutlet weak var Anticonv: UISwitch!
    @IBOutlet weak var Anti_conv_Field: SearchTextField?
    @IBOutlet weak var Antidep: UISwitch!
    @IBOutlet weak var Antdep_field: SearchTextField?
    @IBOutlet weak var Antipsycho: UISwitch!
    @IBOutlet weak var Antipsycho_fields: SearchTextField?
    @IBOutlet weak var Other: UISwitch!
    @IBOutlet weak var Other_Field: SearchTextField?
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
    @IBOutlet weak var Firearm_Recov: UITextField!
    @IBOutlet weak var Casings_Recov: UITextField!
    @IBOutlet weak var Weapon_NF: UITextField!
    @IBOutlet weak var Other_Firearm: UITextField!
    @IBOutlet weak var Firearm_SN: UITextField!
    @IBOutlet weak var Caliber: UITextField!
    @IBOutlet weak var Gauge: UITextField!
    @IBOutlet weak var Firearm_Owner: UITextField!
    @IBOutlet weak var Firearm_Storage: UITextField!
    @IBOutlet weak var Gunshot_Residue: UITextField!
    @IBOutlet weak var Dominant_Hand: UITextField!
    @IBOutlet weak var Type_of_Amm: UITextField!
    @IBOutlet weak var Number_Of_Shells: UITextField!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var ScrollView2: UIScrollView!
    @IBOutlet weak var ScrollView3: UIScrollView!
    @IBOutlet weak var ScrollView4: UIScrollView!
    @IBOutlet weak var ScrollView5: UIScrollView!
    @IBOutlet weak var ScrollView6: UIScrollView!
    @IBOutlet weak var ScrollView7: UIScrollView!
    
    
    @IBAction func Next_1(_ sender: UIButton) {
        allVar.Evidence_Collected = Evidence_Collected
        allVar.Collected_By = Collected_By
        allVar.Date = Date
        allVar.Time = Time
        allVar.Photo = Photo
        allVar.Toxicology_Collected = Toxicology_Collected
        allVar.Blood = Blood
        allVar.Urine = Urine
        allVar.Virteous = Virteous
        allVar.Ems_At_Scene = Ems_At_Scene
        allVar.Victim_Seen = Victim_Seen
        allVar.Admitted = Admitted
        allVar.Attending_PHN = Attending_PHN
        allVar.Name_Ph = Name_Ph
        allVar.Number_PH = Number_PH
        
        allVar.Medical_History = Medical_History
        allVar.Diabetes = Diabetes
        allVar.Medications = Medications
        allVar.Medical_Record_Req = Medical_Record_Req
        allVar.Koda_Notified = Koda_Notified
        allVar.Organ_Donate = Organ_Donate
        allVar.Tissue_Donate = Tissue_Donate
        allVar.Cornea_Donate = Cornea_Donate
        allVar.Police_Dep_Notif = Police_Dep_Notif
        allVar.Officer = Officer
        allVar.KY_Marsh_Notif = KY_Marsh_Notif
        allVar.Osha_Req = Osha_Req
        allVar.Coroners_Inq = Coroners_Inq
        allVar.Autopsy = Autopsy
        allVar.Medical_Examiner = Medical_Examiner
        allVar.Death_Certificate_Signed = Death_Certificate_Signed
        allVar.Signed_By = Signed_By
        allVar.Alcohol_Use_Sus = Alcohol_Use_Sus
        allVar.Drug_Use_Sus = Drug_Use_Sus
        allVar.Alcohol = Alcohol
        allVar.Alcohol_Field = Alcohol_Field
        allVar.Amphe = Amphe
        allVar.Amph_Field = Amph_Field
        allVar.Barbitua = Barbitua
        allVar.Barbituat_field =  Barbituat_field
        allVar.Benzo = Benzo
        allVar.Benzo_field = Benzo_field
        allVar.Cannabinoids = Cannabinoids
        allVar.Cannab_Field = Cannab_Field
        allVar.Cocaine = Cocaine
        allVar.Cocaine_Field = Cocaine_Field
        allVar.Fentanyl = Fentanyl
        allVar.Fent_Field = Fent_Field
        allVar.Methadone = Methadone
        allVar.Methadone_Field = Methadone_Field
        allVar.Opiates = Opiates
        allVar.Opiates_Field = Opiates_Field
        allVar.Oxycodone = Oxycodone
        allVar.Oxycodone_Field = Oxycodone_Field
        allVar.Propo = Propo
        allVar.Propo_field = Propo_field
        allVar.Analgesics = Analgesics
        allVar.Analgesics_field = Analgesics_field
        allVar.Bupren = Bupren
        allVar.Bupren_Field = Bupren_Field
        allVar.Anticonv = Anticonv
        allVar.Anti_conv_Field = Anti_conv_Field
        allVar.Antidep = Antidep
        allVar.Antdep_field = Antdep_field
        allVar.Antipsycho = Antipsycho
        allVar.Antipsycho_fields = Antipsycho_fields
        allVar.Other = Other
        allVar.Other_Field = Other_Field
        allVar.Body_Transported = Body_Transported
        allVar.Cremation = Cremation
        allVar.Cremation_Permit = Cremation_Permit
        allVar.Body_Released_To = Body_Released_To
        allVar.Cost_of_Transport = Cost_of_Transport
        allVar.Funeral_Home = Funeral_Home
        allVar.Phone_Number_1 = Phone_Number_1
        allVar.Head = Head
        allVar.Neck = Neck
        allVar.Face = Face
        allVar.Thorax = Thorax
        allVar.Abdo_LB = Abdo_LB
        allVar.Spine = Spine
        allVar.Upper_Ex = Upper_Ex
        allVar.Lower_Ex = Lower_Ex
        allVar.Unknown = Unknown
        allVar.Additional_Wounds = Additional_Wounds
        allVar.Firearm_Type = Firearm_Type
        allVar.Firearm_Recov = Firearm_Recov
        allVar.Casings_Recov = Casings_Recov
        allVar.Weapon_NF = Weapon_NF
        allVar.Other_Firearm = Other_Firearm
        allVar.Firearm_SN = Firearm_SN
        allVar.Caliber = Caliber
        allVar.Gauge = Gauge
        allVar.Firearm_Owner = Firearm_Owner
        allVar.Gunshot_Residue = Gunshot_Residue
        allVar.Dominant_Hand = Dominant_Hand
        allVar.Type_of_Amm = Type_of_Amm
        allVar.Number_Of_Shells = Number_Of_Shells
        
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
        allVar.Evidence_Collected = Evidence_Collected
        allVar.Collected_By = Collected_By
        allVar.Date = Date
        allVar.Time = Time
        allVar.Photo = Photo
        allVar.Toxicology_Collected = Toxicology_Collected
        allVar.Blood = Blood
        allVar.Urine = Urine
        allVar.Virteous = Virteous
        allVar.Ems_At_Scene = Ems_At_Scene
        allVar.Victim_Seen = Victim_Seen
        allVar.Admitted = Admitted
        allVar.Attending_PHN = Attending_PHN
        allVar.Name_Ph = Name_Ph
        allVar.Number_PH = Number_PH
        
        goToHomePage()
    }
    @IBAction func Save_2(_ sender: UIButton) {
        allVar.Medical_History = Medical_History
        allVar.Diabetes = Diabetes
        allVar.Medications = Medications
        allVar.Medical_Record_Req = Medical_Record_Req
        allVar.Koda_Notified = Koda_Notified
        allVar.Organ_Donate = Organ_Donate
        allVar.Tissue_Donate = Tissue_Donate
        allVar.Cornea_Donate = Cornea_Donate
        allVar.Police_Dep_Notif = Police_Dep_Notif
        allVar.Officer = Officer
        allVar.KY_Marsh_Notif = KY_Marsh_Notif
        allVar.Osha_Req = Osha_Req
        allVar.Coroners_Inq = Coroners_Inq
        allVar.Autopsy = Autopsy
        allVar.Medical_Examiner = Medical_Examiner
        allVar.Death_Certificate_Signed = Death_Certificate_Signed
        allVar.Signed_By = Signed_By
        goToHomePage()
    }
    @IBAction func Save_3(_ sender: UIButton) {
        allVar.Alcohol_Use_Sus = Alcohol_Use_Sus
        allVar.Drug_Use_Sus = Drug_Use_Sus
        allVar.Alcohol = Alcohol
        allVar.Alcohol_Field = Alcohol_Field
        allVar.Amphe = Amphe
        allVar.Amph_Field = Amph_Field
        allVar.Barbitua = Barbitua
        allVar.Barbituat_field =  Barbituat_field
        allVar.Benzo = Benzo
        allVar.Benzo_field = Benzo_field
        allVar.Cannabinoids = Cannabinoids
        allVar.Cannab_Field = Cannab_Field
        allVar.Cocaine = Cocaine
        allVar.Cocaine_Field = Cocaine_Field
        allVar.Fentanyl = Fentanyl
        allVar.Fent_Field = Fent_Field
        allVar.Methadone = Methadone
        allVar.Methadone_Field = Methadone_Field
        goToHomePage()
    }
    @IBAction func Save_4(_ sender: UIButton) {
        allVar.Opiates = Opiates
        allVar.Opiates_Field = Opiates_Field
        allVar.Oxycodone = Oxycodone
        allVar.Oxycodone_Field = Oxycodone_Field
        allVar.Propo = Propo
        allVar.Propo_field = Propo_field
        allVar.Analgesics = Analgesics
        allVar.Analgesics_field = Analgesics_field
        allVar.Bupren = Bupren
        allVar.Bupren_Field = Bupren_Field
        allVar.Anticonv = Anticonv
        allVar.Anti_conv_Field = Anti_conv_Field
        allVar.Antidep = Antidep
        allVar.Antdep_field = Antdep_field
        allVar.Antipsycho = Antipsycho
        allVar.Antipsycho_fields = Antipsycho_fields
        allVar.Other = Other
        allVar.Other_Field = Other_Field
        goToHomePage()
    }
    @IBAction func Save_5(_ sender: UIButton) {
        allVar.Body_Transported = Body_Transported
        allVar.Cremation = Cremation
        allVar.Cremation_Permit = Cremation_Permit
        allVar.Body_Released_To = Body_Released_To
        allVar.Cost_of_Transport = Cost_of_Transport
        allVar.Funeral_Home = Funeral_Home
        allVar.Phone_Number_1 = Phone_Number_1
        goToHomePage()
    }
    @IBAction func Save_6(_ sender: UIButton) {
        allVar.Head = Head
        allVar.Neck = Neck
        allVar.Face = Face
        allVar.Thorax = Thorax
        allVar.Abdo_LB = Abdo_LB
        allVar.Spine = Spine
        allVar.Upper_Ex = Upper_Ex
        allVar.Lower_Ex = Lower_Ex
        allVar.Unknown = Unknown
        allVar.Additional_Wounds = Additional_Wounds
        goToHomePage()
    }
    @IBAction func Save_7(_ sender: UIButton) {
        allVar.Firearm_Type = Firearm_Type
        allVar.Firearm_Recov = Firearm_Recov
        allVar.Casings_Recov = Casings_Recov
        allVar.Weapon_NF = Weapon_NF
        allVar.Other_Firearm = Other_Firearm
        allVar.Firearm_SN = Firearm_SN
        allVar.Caliber = Caliber
        allVar.Gauge = Gauge
        allVar.Firearm_Owner = Firearm_Owner
        allVar.Gunshot_Residue = Gunshot_Residue
        allVar.Dominant_Hand = Dominant_Hand
        allVar.Type_of_Amm = Type_of_Amm
        allVar.Number_Of_Shells = Number_Of_Shells
        goToHomePage()
    }
    
    
    
    
    let Fire_Type = UIPickerView()
    let NF_Type = UIPickerView()
    
    var fire_val: [String] = [String]()
    var nf_val: [String] = [String]()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func toxTerms() {
        
        var tox_list = ["10-monohydroxyoxcarbazepine", "25B-NBOMe", "25C-NBOMe", "25D-NBOMe", "25H-NBOMe", "25I-NBOMe", "2-hydroxyethylflurazepam", "3-methylfentanyl", "4-methoxybutyrylfentanyl", "5F-AMB", "5F-PB-22", "6-MNA", "6-monoacetylmorphine", "7-aminoclonazepam", "7-aminoflunitrazepam", "9-hydroxyrisperidone", "AB-CHMINACA", "AB-PINACA", "Acebutolol", "Acetaminophen", "Acetazolamide", "Acetone", "Acetylfentanyl", "acrylfentanyl", "Alfentanil", "Allobarbital", "Alpha-PBP", "Alpha-PPP", "Alpha-PVP", "Alprazolam", "Alprenolol", "Amiodarone", "Amitriptyline", "Amlodipine", "Amobarbital", "Amoxapine", "Amphetamine", "A-OH-Alprazolam", "Aripiprazole", "Atenolol", "Atomoxetine", "Azithromycin", "Baclofen", "Barbital", "BDB", "Benzocaine", "Benzoylecgonine", "Benzphetamine", "Benztropine", "beta-hydroxythiofentanyl", "Betamethasone", "Betaxolol", "Bisoprolol", "Brodifacoum", "Bromazepam", "Brompheniramine", "Buphedrone", "Bupivacaine", "Buprenorphine", "Bupropion", "Buspirone", "Butabarbital", "Butalbital", "Butaxamine", "Butorphanol", "Butylone", "Butyrylfentanyl/Isobutyrylfentanyl", "BZP (Benzylpiperazine)", "Caffeine", "Carbamazepine", "Carbamazepine-10", "carfentanil", "Carisoprodol", "Carprofen", "Ceftriaxone", "Chloramphenicol", "Chlordiazepoxide", "Chlorothiazide", "Chlorpheniramine", "Chlorpromazine", "Chlorpropamide", "Cimetidine", "Ciprofloxacin", "Citalopram", "Clindamycin", "Clomipramine", "Clonazepam", "Clonidine", "Clorazepate", "Clozapine", "Cocaethylene", "Cocaine", "Codeine", "Cotinine", "Coumarin", "Cyclizine", "Cyclobenzaprine", "Dehydroaripiprazole", "Demoxepam", "Desalkylflurazepam", "Desethylamiodarone", "Desipramine", "Norclomipramine/n-desmethylclomipramine", "Desmethylflunitrazepam", "Desmethylpapaverine", "Dexamethasone", "Dextromethorphan", "Diacetylmorphine", "Diazepam", "Diclofenac", "Dicyclomine", "Diflunisal", "Digoxin", "Dihydrocodeine", "Diltiazem", "Dimenhydrinate", "Diphenhydramine", "Disopyramide", "Donepezil", "Dosulepin", "Doxepin", "Doxylamine", "Duloxetine", "EDDP", "EMDP", "Emetine", "Ephedrine", "Erythromycin", "Esmolol", "Estazolam", "Eszopiclone", "Ethanol", "Ethosuximide", "Ethylmethcathinone", "Ethylmethocathinone", "Ethylone", "Etizolan", "Etodolac", "Etomidate", "Felbamate", "Fenoprofen", "Fentanyl", "Flecainide", "Flephedrone", "Flumazenil", "Flunitrazepam", "Fluoxetine", "Fluphenazine", "Flurazepam", "Fluvoxamine", "furanylfentanyl", "Furosemide", "Gabapentin", "Glutethimide", "Guaifenesin", "Haloperidol", "Hexobarbital", "Hydrochlorothiazide", "Hydrocodone", "Hydromorphone", "Hydroxychloroquine", "Hydroxytriazolam", "Hydroxyzine", "Ibuprofen", "Imipramine", "Indomethacin", "Isopropanol", "JWH-015", "JWH-018", "JWH-019", "JWH-073", "JWH-122", "Ketamine", "Ketoprofen", "Ketorolac", "Labetalol", "Lamotrigine", "Levetiracetam", "Levofloxacin", "Lidocaine", "Loratadine", "Lorazepam", "Lormetazepam", "LSD", "MAM-2201", "Chlorophenylpiperazine / mCPP (1", "MDA", "MDMA", "MDPV", "Meclofenamic Acid", "Medazepam", "Meperidine", "Mephedrone", "Mephobarbital", "Mepivacaine", "Meprobamate", "Mescaline", "Mesoridazine", "Metaproterenol", "Metaxalone", "Methadone", "Methamphetamine", "Methanol", "Methaqualone", "Methcathinone", "Methedrone", "Methocarbamol", "Methohexital", "Methoxetamine", "Methsuximide", "Methylethcathinone", "Methylone", "Methylphenidate", "Metoclopramide", "Metoprolol", "Mexiletine", "Mianserin", "Midazolam", "Mirtazapine", "Morphine", "Nadolol", "Nalbuphine", "Nalorphine", "Naloxone", "Naltrexone", "Naproxen", "Nefazodone", "Nicotine", "Nifedipine", "Nitrazepam", "Norbuprenorphine", "Norclozapine", "Nordiazepam", "Nordoxepin", "Norfentanyl", "Norfluoxetine", "Norketamine", "Normeperidine", "Norpropoxyphene", "Norsertraline", "Nortramadol/n-desmethyltramadol", "Nortriptyline", "Norvenlafaxine/n-desmethylvenlafaxine", "Noscapine", "Olanzapine", "Orphenadrine", "Oxaprozin", "Oxazepam", "Oxprenolol", "Oxycodone", "Oxymetazoline", "Oxymorphone", "Papaverine", "para-fluorobutyrylfentanyl/para-fluoroisobutyrylfentanyl", "Paroxetine", "PB-22", "Pentazocine", "Pentedrone", "Pentobarbital", "Pentoxifylline", "Pentylone", "Perphenazine", "Phenacetin", "Phenazepam", "Phencyclidine", "Phendimetrazine", "Phenelzine", "Phenobarbital", "Phensuximide", "Phentermine", "Phenylbutazone", "Phenylpropanolamine", "Phenytoin", "Pholcodine", "Pimozide", "Pindolol", "Piperacillin", "Piroxicam", "PMA", "Pramipexole", "Pramoxine", "Prazepam", "Pregabalin", "Primidone", "Probenecid", "Procainamide", "Procaine", "Prochlorperazine", "Promethazine", "Propofol", "Propoxyphene", "Propranolol", "Protriptyline", "Pseudoephedrine", "Psilocin", "Pyrilamine", "Quetiapine", "Quinidine", "Ramelteon", "Ranitidine", "Reserpine", "Risperidone", "Rocuronium", "Ropinirole", "Ropivacaine", "Salicylates", "Salvinorin A", "Secobarbital", "Sertraline", "Sildenafil", "Sotalol", "Strychnine", "Sufentanil", "Sulfanilamide", "Sulindac", "Sumatriptan", "Tadalafil", "Temazepam", "Tetrahydrozoline", "Tetrazepam", "TFMPP (1", "THC", "THC-COOH", "Thebaine", "Thiopental", "Thioridazine", "Tilmicosin", "Timolol", "Tizanadine", "Tolbutamide", "Tolmetin", "Topiramate", "Tramadol", "Trazodone", "Triamterene", "Triazolam", "Trifluoperazine", "Trihexyphenidyl", "Trimipramine", "Triprolidine", "U47700", "UR-144", "Valproic Acid", "Vardenafil", "Venlafaxine", "Verapamil", "Warfarin", "XLR-11", "xylazine", "Zaleplon", "Ziprasidone", "Zolpidem", "Zonisamide", "Zopiclone", "Other", "Propanolol", "methoxyacetylfentanyl", "5F-AB-PINACA", "5F-ADB", "5F-ADB-PINACA", "5F-NNEI", "5F-NNEI", "5F-THJ", "AB-FUBINACA", "ADB-FUBINACA", "ADBICA", "ADB-PINACA", "AMB", "APP-FUBINACA", "APP-FUBINACA", "EAM-2201", "FAB-144", "FDU-PB-22", "JWH-210", "JWH-250", "M-144", "MAB-CHMINACA", "MA-CHMINACA", "MDMB-CHMICA", "MDMB-FUBINACA", "MN18", "MO-CHMINACA", "NNEI", "PX1", "PX2", "PX3", "SDB-006", "THJ", "THJ-018", "THJ-2201", "XLR12", "Desvenalafaxine/o-desmethylvenlafaxine", "Cyclopropylfentanyl", "Ocfentanil", "Tetrahydrofuranfentanyl", "N-Ethylpentylone", "Flubromazolam", "Etizolam", "Dimethylone", "Dubutylone", "Clonazolam", "cis-3-Methylfentanyl", "4-ANPP", "Desmetramadol/o-desmethyltramadol", "1-Difluoroethane", "Loperamide", "Mitragynine", "Cetirizine", "Drug Class Only", "NEGATIVE"]
        
        
        Alcohol_Field?.filterStrings(tox_list)
        Amph_Field?.filterStrings(tox_list)
        Barbituat_field?.filterStrings(tox_list)
        Benzo_field?.filterStrings(tox_list)
        Cannab_Field?.filterStrings(tox_list)
        Cocaine_Field?.filterStrings(tox_list)
        Fent_Field?.filterStrings(tox_list)
        Methadone_Field?.filterStrings(tox_list)
        Opiates_Field?.filterStrings(tox_list)
        Oxycodone_Field?.filterStrings(tox_list)
        Propo_field?.filterStrings(tox_list)
        Analgesics_field?.filterStrings(tox_list)
        Bupren_Field?.filterStrings(tox_list)
        Anti_conv_Field?.filterStrings(tox_list)
        Antdep_field?.filterStrings(tox_list)
        Antipsycho_fields?.filterStrings(tox_list)
        Other_Field?.filterStrings(tox_list)
        
        
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
        
        toxTerms()

        
        self.Evidence_Collected?.delegate = self
        self.Collected_By?.delegate = self
        self.Date?.delegate = self
        self.Time?.delegate = self
        self.Name_Ph?.delegate = self
        self.Number_PH?.delegate = self
        self.Medical_History?.delegate = self
        self.Medications?.delegate = self
        self.Officer?.delegate = self
        self.Medical_Examiner?.delegate = self
        self.Signed_By?.delegate = self
        self.Alcohol_Field?.delegate = self
        self.Barbituat_field?.delegate = self
        self.Amph_Field?.delegate = self
        self.Benzo_field?.delegate = self
        self.Cannab_Field?.delegate = self
        self.Cocaine_Field?.delegate = self
        self.Fent_Field?.delegate = self
        self.Methadone_Field?.delegate = self
        self.Opiates_Field?.delegate = self
        self.Oxycodone_Field?.delegate = self
        self.Propo_field?.delegate = self
        self.Analgesics_field?.delegate = self
        self.Bupren_Field?.delegate = self
        self.Anti_conv_Field?.delegate = self
        self.Antdep_field?.delegate = self
        self.Antipsycho_fields?.delegate = self
        self.Other_Field?.delegate = self
        self.Firearm_Recov?.delegate = self
        self.Casings_Recov?.delegate = self
        self.Other_Firearm?.delegate = self
        self.Firearm_SN?.delegate = self
        self.Caliber?.delegate = self
        self.Gauge?.delegate = self
        self.Firearm_Owner?.delegate = self
        self.Firearm_Storage?.delegate = self
        self.Gunshot_Residue?.delegate = self
        self.Dominant_Hand?.delegate = self
        self.Type_of_Amm?.delegate = self
        self.Number_Of_Shells?.delegate = self
        self.Body_Released_To?.delegate = self
        self.Cost_of_Transport?.delegate = self
        self.Funeral_Home?.delegate = self
        self.Phone_Number_1?.delegate = self

        
        // Do any additional setup after loading the view.
        Fire_Type.tag = 0
        Firearm_Type?.inputView = Fire_Type
        Fire_Type.delegate = self
        Fire_Type.dataSource = self
        fire_val = ["Hand gun", "Revolver", "Semi-Auto", "Rifle", "Shotgun", "Other(See Narrative)", "Non-Powder Gun"]
        
        //let Injury_Death = UIPickerView()
        NF_Type.tag = 1
        Weapon_NF?.inputView = NF_Type
        NF_Type.delegate = self
        NF_Type.dataSource = self
        nf_val = ["Sharp Instrument", "Blunt Instrument", "Poisoning", "Hanging/Strangulation/Suffocation", "Personal Weapons (e.g Fist)", "Fall (Pushed/Jump)", "Explosive", "Drowning", "Fire or Burns", "Shaking", "Motor Vehicle", "Biological Weapons", "Other (Specify in Narrative Comments)"]
        
       
        if allVar.isPending || allVar.isPublished{
            Evidence_Collected?.text = allVar.Evidence_Collected?.text
            Collected_By?.text = allVar.Collected_By?.text
            Date?.text = allVar.Date?.text
            Time?.text = allVar.Time?.text
            if let bool = allVar.Photo?.isOn{
            Photo?.setOn(bool, animated: bool)
            }
            if let bool = allVar.Toxicology_Collected?.isOn{Toxicology_Collected?.setOn(bool,animated: bool)}
            if let bool = allVar.Blood?.isOn{Blood?.setOn(bool,animated: bool)}
            if let bool = allVar.Urine?.isOn{Urine?.setOn(bool,animated: bool)}
            if let bool = allVar.Virteous?.isOn{Virteous?.setOn(bool,animated: bool)}
            if let bool = allVar.Ems_At_Scene?.isOn{Ems_At_Scene?.setOn(bool,animated: bool)}
            if let bool = allVar.Victim_Seen?.isOn{Victim_Seen?.setOn(bool,animated: bool)}
            if let bool = allVar.Admitted?.isOn{Admitted?.setOn(bool,animated: bool)}
            if let bool = allVar.Attending_PHN?.isOn{Attending_PHN?.setOn(bool,animated: bool)}
            if let bool = allVar.Diabetes?.isOn{Diabetes?.setOn(bool,animated: bool)}
            if let bool = allVar.Medical_Record_Req?.isOn{Medical_Record_Req?.setOn(bool,animated: bool)}
            if let bool = allVar.Koda_Notified?.isOn{Koda_Notified?.setOn(bool,animated: bool)}
            if let bool = allVar.Organ_Donate?.isOn{Organ_Donate?.setOn(bool,animated: bool)}
            if let bool = allVar.Tissue_Donate?.isOn{Tissue_Donate?.setOn(bool,animated: bool)}
            if let bool = allVar.Cornea_Donate?.isOn{Cornea_Donate?.setOn(bool,animated: bool)}
            if let bool = allVar.Police_Dep_Notif?.isOn{Police_Dep_Notif?.setOn(bool,animated: bool)}
            if let bool = allVar.KY_Marsh_Notif?.isOn{KY_Marsh_Notif?.setOn(bool,animated: bool)}
            if let bool = allVar.Osha_Req?.isOn{Osha_Req?.setOn(bool,animated: bool)}
            if let bool = allVar.Coroners_Inq?.isOn{Coroners_Inq?.setOn(bool,animated: bool)}
            if let bool = allVar.Autopsy?.isOn{Autopsy?.setOn(bool,animated: bool)}
            if let bool = allVar.Death_Certificate_Signed?.isOn{Death_Certificate_Signed?.setOn(bool,animated: bool)}
            if let bool = allVar.Alcohol_Use_Sus?.isOn{Alcohol_Use_Sus?.setOn(bool,animated: bool)}
            if let bool = allVar.Drug_Use_Sus?.isOn{Drug_Use_Sus?.setOn(bool,animated: bool)}
            if let bool = allVar.Alcohol?.isOn{Alcohol?.setOn(bool,animated: bool)}
            if let bool = allVar.Amphe?.isOn{Amphe?.setOn(bool,animated: bool)}
            if let bool = allVar.Barbitua?.isOn{Barbitua?.setOn(bool,animated: bool)}
            if let bool = allVar.Benzo?.isOn{Benzo?.setOn(bool,animated: bool)}
            if let bool = allVar.Cannabinoids?.isOn{Cannabinoids?.setOn(bool,animated: bool)}
            if let bool = allVar.Cocaine?.isOn{Cocaine?.setOn(bool,animated: bool)}
            if let bool = allVar.Fentanyl?.isOn{Fentanyl?.setOn(bool,animated: bool)}
            if let bool = allVar.Methadone?.isOn{Methadone?.setOn(bool,animated: bool)}
            if let bool = allVar.Opiates?.isOn{Opiates?.setOn(bool,animated: bool)}
            if let bool = allVar.Oxycodone?.isOn{Oxycodone?.setOn(bool,animated: bool)}
            if let bool = allVar.Propo?.isOn{Propo?.setOn(bool,animated: bool)}
            if let bool = allVar.Analgesics?.isOn{Analgesics?.setOn(bool,animated: bool)}
            if let bool = allVar.Bupren?.isOn{Bupren?.setOn(bool,animated: bool)}
            if let bool = allVar.Anticonv?.isOn{Anticonv?.setOn(bool,animated: bool)}
            if let bool = allVar.Antidep?.isOn{Antidep?.setOn(bool,animated: bool)}
            if let bool = allVar.Antipsycho?.isOn{Antipsycho?.setOn(bool,animated: bool)}
            if let bool = allVar.Other?.isOn{Other?.setOn(bool,animated: bool)}
            if let bool = allVar.Body_Transported?.isOn{Body_Transported?.setOn(bool,animated: bool)}
            if let bool = allVar.Cremation?.isOn{Cremation?.setOn(bool,animated: bool)}
            if let bool = allVar.Cremation_Permit?.isOn{Cremation_Permit?.setOn(bool,animated: bool)}
            if let bool = allVar.Head?.isOn{Head?.setOn(bool,animated: bool)}
            if let bool = allVar.Neck?.isOn{Neck?.setOn(bool,animated: bool)}
            if let bool = allVar.Face?.isOn{Face?.setOn(bool,animated: bool)}
            if let bool = allVar.Thorax?.isOn{Thorax?.setOn(bool,animated: bool)}
            if let bool = allVar.Abdo_LB?.isOn{Abdo_LB?.setOn(bool,animated: bool)}
            if let bool = allVar.Spine?.isOn{Spine?.setOn(bool,animated: bool)}
            if let bool = allVar.Upper_Ex?.isOn{Upper_Ex?.setOn(bool,animated: bool)}
            if let bool = allVar.Lower_Ex?.isOn{Lower_Ex?.setOn(bool,animated: bool)}
            if let bool = allVar.Unknown?.isOn{Unknown?.setOn(bool,animated: bool)}
            if let bool = allVar.Additional_Wounds?.isOn{Additional_Wounds?.setOn(bool,animated: bool)}
            
            Name_Ph?.text = allVar.Name_Ph?.text
            Number_PH?.text = allVar.Number_PH?.text
            Medical_History?.text = allVar.Medical_History?.text
            Medications?.text = allVar.Medications?.text
            Medical_Examiner?.text = allVar.Medical_Examiner?.text
            Signed_By?.text = allVar.Signed_By?.text
            Alcohol_Field?.text = allVar.Alcohol_Field?.text
            Amph_Field?.text = allVar.Amph_Field?.text
            Barbituat_field?.text = allVar.Barbituat_field?.text
            Benzo_field?.text = allVar.Benzo_field?.text
            Cannab_Field?.text = allVar.Cannab_Field?.text
            Cocaine_Field?.text = allVar.Cocaine_Field?.text
            Fent_Field?.text = allVar.Fent_Field?.text
            Methadone_Field?.text = allVar.Methadone_Field?.text
            Opiates_Field?.text = allVar.Opiates_Field?.text
            Oxycodone_Field?.text = allVar.Oxycodone_Field?.text
            Propo_field?.text = allVar.Propo_field?.text
            Analgesics_field?.text = allVar.Analgesics_field?.text
            Bupren_Field?.text = allVar.Bupren_Field?.text
            Anti_conv_Field?.text = allVar.Anti_conv_Field?.text
            Antdep_field?.text = allVar.Antdep_field?.text
            Antipsycho_fields?.text = allVar.Antipsycho_fields?.text
            Other_Field?.text = allVar.Other_Field?.text
            Body_Released_To?.text = allVar.Body_Released_To?.text
            Cost_of_Transport?.text = allVar.Cost_of_Transport?.text
            Funeral_Home?.text = allVar.Funeral_Home?.text
            Phone_Number_1?.text = allVar.Phone_Number_1?.text
            Firearm_Type?.text = allVar.Firearm_Type?.text
            Firearm_Recov?.text = allVar.Firearm_Recov?.text
            Casings_Recov?.text = allVar.Casings_Recov?.text
            Weapon_NF?.text = allVar.Weapon_NF?.text
            Other_Firearm?.text = allVar.Other_Firearm?.text
            Firearm_SN?.text = allVar.Firearm_SN?.text
            Caliber?.text = allVar.Caliber?.text
            Gauge?.text = allVar.Gauge?.text
            Firearm_Owner?.text = allVar.Firearm_Owner?.text
            Firearm_Storage?.text = allVar.Firearm_Storage?.text
            Gunshot_Residue?.text = allVar.Gunshot_Residue?.text
            Dominant_Hand?.text = allVar.Dominant_Hand?.text
            Type_of_Amm?.text = allVar.Type_of_Amm?.text
            Number_Of_Shells?.text = allVar.Number_Of_Shells?.text
            
        }
        
    }
    
 
        
    }
    




