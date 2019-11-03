//
//  Pills_On_Scene.swift
//  PillsOnScene
//
//  Created by Team Awesome on 4/16/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import SearchTextField

class Pills_On_Scene: UIViewController, UITextFieldDelegate{
    
    var isPending = false
    
    @IBOutlet weak var NameOfDrug: SearchTextField!
    @IBOutlet weak var DateFilled: UITextField!
    @IBOutlet weak var RxNum: UITextField!
    @IBOutlet weak var NameOnRx: UITextField!
    @IBOutlet weak var Dosing: UITextField!
    @IBOutlet weak var Strength: UITextField!
    @IBOutlet weak var RxQuantity: UITextField!
    @IBOutlet weak var QuantityRemaining: UITextField!
    @IBOutlet weak var PharmName: UITextField!
    @IBOutlet weak var PharmCity: UITextField!
    @IBOutlet weak var Provider: UITextField!
    @IBOutlet weak var PillTable: UITableView!
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func Save(_ sender: UIButton) {
        allVar.PillTable = PillTable
        goToHomePage()
    }
    @IBAction func Next(_ sender: UIButton) {
        allVar.PillTable = PillTable
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        drugNames()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.NameOfDrug?.delegate = self
        self.DateFilled?.delegate = self
        self.RxNum?.delegate = self
        self.NameOnRx?.delegate = self
        self.Dosing?.delegate = self
        self.Strength?.delegate = self
        self.RxQuantity?.delegate = self
        self.QuantityRemaining?.delegate = self
        self.PharmName?.delegate = self
        self.PharmCity?.delegate = self
        self.Provider?.delegate = self
        // Do any additional setup after loading the view.
        
        PillTable.layer.borderColor = UIColor.lightGray.cgColor
        PillTable.layer.borderWidth = 0.5
        
        if allVar.isPending || allVar.isPublished{
            PillTable?.dataSource = allVar.PillTable?.dataSource
            
        }
    }
    
    func drugNames() {
        
        let tox_list = ["10-monohydroxyoxcarbazepine", "25B-NBOMe", "25C-NBOMe", "25D-NBOMe", "25H-NBOMe", "25I-NBOMe", "2-hydroxyethylflurazepam", "3-methylfentanyl", "4-methoxybutyrylfentanyl", "5F-AMB", "5F-PB-22", "6-MNA", "6-monoacetylmorphine", "7-aminoclonazepam", "7-aminoflunitrazepam", "9-hydroxyrisperidone", "AB-CHMINACA", "AB-PINACA", "Acebutolol", "Acetaminophen", "Acetazolamide", "Acetone", "Acetylfentanyl", "acrylfentanyl", "Alfentanil", "Allobarbital", "Alpha-PBP", "Alpha-PPP", "Alpha-PVP", "Alprazolam", "Alprenolol", "Amiodarone", "Amitriptyline", "Amlodipine", "Amobarbital", "Amoxapine", "Amphetamine", "A-OH-Alprazolam", "Aripiprazole", "Atenolol", "Atomoxetine", "Azithromycin", "Baclofen", "Barbital", "BDB", "Benzocaine", "Benzoylecgonine", "Benzphetamine", "Benztropine", "beta-hydroxythiofentanyl", "Betamethasone", "Betaxolol", "Bisoprolol", "Brodifacoum", "Bromazepam", "Brompheniramine", "Buphedrone", "Bupivacaine", "Buprenorphine", "Bupropion", "Buspirone", "Butabarbital", "Butalbital", "Butaxamine", "Butorphanol", "Butylone", "Butyrylfentanyl/Isobutyrylfentanyl", "BZP (Benzylpiperazine)", "Caffeine", "Carbamazepine", "Carbamazepine-10", "carfentanil", "Carisoprodol", "Carprofen", "Ceftriaxone", "Chloramphenicol", "Chlordiazepoxide", "Chlorothiazide", "Chlorpheniramine", "Chlorpromazine", "Chlorpropamide", "Cimetidine", "Ciprofloxacin", "Citalopram", "Clindamycin", "Clomipramine", "Clonazepam", "Clonidine", "Clorazepate", "Clozapine", "Cocaethylene", "Cocaine", "Codeine", "Cotinine", "Coumarin", "Cyclizine", "Cyclobenzaprine", "Dehydroaripiprazole", "Demoxepam", "Desalkylflurazepam", "Desethylamiodarone", "Desipramine", "Norclomipramine/n-desmethylclomipramine", "Desmethylflunitrazepam", "Desmethylpapaverine", "Dexamethasone", "Dextromethorphan", "Diacetylmorphine", "Diazepam", "Diclofenac", "Dicyclomine", "Diflunisal", "Digoxin", "Dihydrocodeine", "Diltiazem", "Dimenhydrinate", "Diphenhydramine", "Disopyramide", "Donepezil", "Dosulepin", "Doxepin", "Doxylamine", "Duloxetine", "EDDP", "EMDP", "Emetine", "Ephedrine", "Erythromycin", "Esmolol", "Estazolam", "Eszopiclone", "Ethanol", "Ethosuximide", "Ethylmethcathinone", "Ethylmethocathinone", "Ethylone", "Etizolan", "Etodolac", "Etomidate", "Felbamate", "Fenoprofen", "Fentanyl", "Flecainide", "Flephedrone", "Flumazenil", "Flunitrazepam", "Fluoxetine", "Fluphenazine", "Flurazepam", "Fluvoxamine", "furanylfentanyl", "Furosemide", "Gabapentin", "Glutethimide", "Guaifenesin", "Haloperidol", "Hexobarbital", "Hydrochlorothiazide", "Hydrocodone", "Hydromorphone", "Hydroxychloroquine", "Hydroxytriazolam", "Hydroxyzine", "Ibuprofen", "Imipramine", "Indomethacin", "Isopropanol", "JWH-015", "JWH-018", "JWH-019", "JWH-073", "JWH-122", "Ketamine", "Ketoprofen", "Ketorolac", "Labetalol", "Lamotrigine", "Levetiracetam", "Levofloxacin", "Lidocaine", "Loratadine", "Lorazepam", "Lormetazepam", "LSD", "MAM-2201", "Chlorophenylpiperazine / mCPP (1", "MDA", "MDMA", "MDPV", "Meclofenamic Acid", "Medazepam", "Meperidine", "Mephedrone", "Mephobarbital", "Mepivacaine", "Meprobamate", "Mescaline", "Mesoridazine", "Metaproterenol", "Metaxalone", "Methadone", "Methamphetamine", "Methanol", "Methaqualone", "Methcathinone", "Methedrone", "Methocarbamol", "Methohexital", "Methoxetamine", "Methsuximide", "Methylethcathinone", "Methylone", "Methylphenidate", "Metoclopramide", "Metoprolol", "Mexiletine", "Mianserin", "Midazolam", "Mirtazapine", "Morphine", "Nadolol", "Nalbuphine", "Nalorphine", "Naloxone", "Naltrexone", "Naproxen", "Nefazodone", "Nicotine", "Nifedipine", "Nitrazepam", "Norbuprenorphine", "Norclozapine", "Nordiazepam", "Nordoxepin", "Norfentanyl", "Norfluoxetine", "Norketamine", "Normeperidine", "Norpropoxyphene", "Norsertraline", "Nortramadol/n-desmethyltramadol", "Nortriptyline", "Norvenlafaxine/n-desmethylvenlafaxine", "Noscapine", "Olanzapine", "Orphenadrine", "Oxaprozin", "Oxazepam", "Oxprenolol", "Oxycodone", "Oxymetazoline", "Oxymorphone", "Papaverine", "para-fluorobutyrylfentanyl/para-fluoroisobutyrylfentanyl", "Paroxetine", "PB-22", "Pentazocine", "Pentedrone", "Pentobarbital", "Pentoxifylline", "Pentylone", "Perphenazine", "Phenacetin", "Phenazepam", "Phencyclidine", "Phendimetrazine", "Phenelzine", "Phenobarbital", "Phensuximide", "Phentermine", "Phenylbutazone", "Phenylpropanolamine", "Phenytoin", "Pholcodine", "Pimozide", "Pindolol", "Piperacillin", "Piroxicam", "PMA", "Pramipexole", "Pramoxine", "Prazepam", "Pregabalin", "Primidone", "Probenecid", "Procainamide", "Procaine", "Prochlorperazine", "Promethazine", "Propofol", "Propoxyphene", "Propranolol", "Protriptyline", "Pseudoephedrine", "Psilocin", "Pyrilamine", "Quetiapine", "Quinidine", "Ramelteon", "Ranitidine", "Reserpine", "Risperidone", "Rocuronium", "Ropinirole", "Ropivacaine", "Salicylates", "Salvinorin A", "Secobarbital", "Sertraline", "Sildenafil", "Sotalol", "Strychnine", "Sufentanil", "Sulfanilamide", "Sulindac", "Sumatriptan", "Tadalafil", "Temazepam", "Tetrahydrozoline", "Tetrazepam", "TFMPP (1", "THC", "THC-COOH", "Thebaine", "Thiopental", "Thioridazine", "Tilmicosin", "Timolol", "Tizanadine", "Tolbutamide", "Tolmetin", "Topiramate", "Tramadol", "Trazodone", "Triamterene", "Triazolam", "Trifluoperazine", "Trihexyphenidyl", "Trimipramine", "Triprolidine", "U47700", "UR-144", "Valproic Acid", "Vardenafil", "Venlafaxine", "Verapamil", "Warfarin", "XLR-11", "xylazine", "Zaleplon", "Ziprasidone", "Zolpidem", "Zonisamide", "Zopiclone", "Other", "Propanolol", "methoxyacetylfentanyl", "5F-AB-PINACA", "5F-ADB", "5F-ADB-PINACA", "5F-NNEI", "5F-NNEI", "5F-THJ", "AB-FUBINACA", "ADB-FUBINACA", "ADBICA", "ADB-PINACA", "AMB", "APP-FUBINACA", "APP-FUBINACA", "EAM-2201", "FAB-144", "FDU-PB-22", "JWH-210", "JWH-250", "M-144", "MAB-CHMINACA", "MA-CHMINACA", "MDMB-CHMICA", "MDMB-FUBINACA", "MN18", "MO-CHMINACA", "NNEI", "PX1", "PX2", "PX3", "SDB-006", "THJ", "THJ-018", "THJ-2201", "XLR12", "Desvenalafaxine/o-desmethylvenlafaxine", "Cyclopropylfentanyl", "Ocfentanil", "Tetrahydrofuranfentanyl", "N-Ethylpentylone", "Flubromazolam", "Etizolam", "Dimethylone", "Dubutylone", "Clonazolam", "cis-3-Methylfentanyl", "4-ANPP", "Desmetramadol/o-desmethyltramadol", "1-Difluoroethane", "Loperamide", "Mitragynine", "Cetirizine", "Drug Class Only", "NEGATIVE"]
        NameOfDrug.filterStrings(tox_list)
        
    }
    
    var TableData: [String] = []
    
    @IBAction func AddItem(_ sender: Any) {
        var Pill: String = ""
        if let Dname = NameOfDrug.text {
            Pill += "\(Dname), "
            NameOfDrug.text = ""
        }
        if let Dfill = DateFilled.text {
            Pill += "\(Dfill), "
            DateFilled.text = ""
        }
        if let num = RxNum.text {
            Pill += "\(num), "
            RxNum.text = ""
        }
        if let nameRx = NameOnRx.text {
            Pill += "\(nameRx), "
            NameOnRx.text = ""
        }
        if let dose = Dosing.text {
            Pill += "\(dose), "
            Dosing.text = ""
        }
        if let str = Strength.text {
            Pill += "\(str), "
            Strength.text = ""
        }
        if let Rxq = RxQuantity.text {
            Pill += "\(Rxq), "
            RxQuantity.text = ""
        }
        if let qrem = QuantityRemaining.text {
            Pill += "\(qrem), "
            QuantityRemaining.text = ""
        }
        if let Pname = PharmName.text {
            Pill += "\(Pname), "
            PharmName.text = ""
        }
        if let Pcity = PharmCity.text {
            Pill += "\(Pcity), "
            PharmCity.text = ""
        }
        if let prov = Provider.text {
            Pill += "\(prov)"
            Provider.text = ""
        }
        print(Pill)
        self.add(Pill)
    }
    
    func add(_ pill: String) {
        let index = 0
        TableData.insert(pill, at: index)
        let indexPath = IndexPath(row: index, section: 0)
        PillTable.insertRows(at: [indexPath], with: .left)
    }
}
    extension Pills_On_Scene: UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TableData.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            let pill = TableData[indexPath.row]
            cell.textLabel?.text = pill
            return cell
        }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            guard editingStyle == .delete else {return}
            TableData.remove(at: indexPath.row)
            PillTable.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    

