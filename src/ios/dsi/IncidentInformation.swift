//
//  IncidentInformation.swift
//  MDSI form
//
//  Created by Team Awesome on 4/1/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import Alamofire

class Incident_Information: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == Place_Death){
            return place_val.count
            
        }
        else if (pickerView == Injury_Death){
            return injury_val.count
            
        }
        else{
            return 1
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == Place_Death){
            return place_val[row]
            
        }
        else if (pickerView == Injury_Death){
            return injury_val[row]
            
        }
        else{
            return "Error"
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == Place_Death){
            PlaceDeath?.text = place_val[row]
            view.endEditing(true)
        }
        else if(pickerView == Injury_Death){
            PlaceInjury?.text = injury_val[row]
            view.endEditing(true)
        }
    }
    
    
    @IBOutlet weak var Death_Date: UITextField!
    @IBOutlet weak var Death_Time: UITextField!
    @IBOutlet weak var Injury_Date: UITextField!
    @IBOutlet weak var Injury_Time: UITextField!
    @IBOutlet weak var PlaceDeath: UITextField!
    @IBOutlet weak var PlaceInjury: UITextField!
    @IBOutlet weak var LS_Date: UITextField!
    @IBOutlet weak var LS_Time: UITextField!
    @IBOutlet weak var LS_Loc: UITextField!
    @IBOutlet weak var LS_CC: UITextField!
    @IBOutlet weak var DD_Date: UITextField!
    @IBOutlet weak var DD_Time: UITextField!
    @IBOutlet weak var DD_Loc: UITextField!
    @IBOutlet weak var DD_CC: UITextField!
    @IBOutlet weak var Found_Dead_By: UITextField!
    @IBOutlet weak var FDB_Address: UITextField!
    @IBOutlet weak var Last_Seen_Alive: UITextField!
    @IBOutlet weak var LSA_Address: UITextField!
    @IBOutlet weak var Witness: UITextField!
    @IBOutlet weak var Weather: UITextField!
    @IBOutlet weak var Activity: UITextField!
    @IBOutlet weak var Position_Body: UITextField!
    @IBOutlet weak var Livor: UITextField!
    @IBOutlet weak var Rigor: UITextField!
    @IBOutlet weak var Consisent_With_Position: UITextField!
    @IBOutlet weak var Clothed: UITextField!
    @IBOutlet weak var Partially_Clothed: UITextField!
    @IBOutlet weak var Unclothed: UITextField!
    @IBOutlet weak var Dis_Mark: UITextField!
    @IBOutlet weak var Body_Temp: UITextField!
    @IBOutlet weak var Body_Decomp: UITextField!
    @IBOutlet weak var Immed_Cause: UITextField!
    @IBOutlet weak var Due_to: UITextField!
    @IBOutlet weak var Due_to_2: UITextField!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var ScrollView2: UIScrollView!
    @IBOutlet weak var ScrollView3: UIScrollView!
    
    @IBAction func Next_1(_ sender: UIButton) {
        allVar.Death_Date = Death_Date
        allVar.Death_Time = Death_Time
        allVar.Injury_Date = Injury_Date
        allVar.PlaceDeath = PlaceDeath
        allVar.PlaceInjury = PlaceInjury
        allVar.LS_Date = LS_Date
        allVar.LS_Time = LS_Time
        allVar.LS_Loc = LS_Loc
        allVar.LS_CC = LS_CC
    }
    @IBAction func Next_2(_ sender: UIButton) {
        allVar.DD_Date = DD_Date
        allVar.DD_Time = DD_Time
        allVar.DD_Loc = DD_Loc
        allVar.DD_CC = DD_CC
        allVar.Found_Dead_By = Found_Dead_By
        allVar.FDB_Address = FDB_Address
        allVar.Last_Seen_Alive = Last_Seen_Alive
        allVar.LSA_Address = LSA_Address
        allVar.Witness = Witness
        allVar.Weather = Weather
        allVar.Activity = Activity
    }
    @IBAction func Next_3(_ sender: UIButton) {
        allVar.Position_Body = Position_Body
        allVar.Livor = Livor
        allVar.Rigor = Rigor
        allVar.Consisent_With_Position = Consisent_With_Position
        allVar.Clothed = Clothed
        allVar.Partially_Clothed = Partially_Clothed
        allVar.Unclothed = Unclothed
        allVar.Dis_Mark = Dis_Mark
        allVar.Body_Temp = Body_Temp
        allVar.Body_Decomp = Body_Decomp
        allVar.Immed_Cause = Immed_Cause
        allVar.Due_to = Due_to
        allVar.Due_to_2 = Due_to_2
    }
    
    
    @IBAction func Save_1(_ sender: UIButton) {
        allVar.Death_Date = Death_Date
        allVar.Death_Time = Death_Time
        allVar.Injury_Date = Injury_Date
        allVar.PlaceDeath = PlaceDeath
        allVar.PlaceInjury = PlaceInjury
        allVar.LS_Date = LS_Date
        allVar.LS_Time = LS_Time
        allVar.LS_Loc = LS_Loc
        allVar.LS_CC = LS_CC
        goToHomePage()
    }
    @IBAction func Save_2(_ sender: UIButton) {
        allVar.DD_Date = DD_Date
        allVar.DD_Time = DD_Time
        allVar.DD_Loc = DD_Loc
        allVar.DD_CC = DD_CC
        allVar.Found_Dead_By = Found_Dead_By
        allVar.FDB_Address = FDB_Address
        allVar.Last_Seen_Alive = Last_Seen_Alive
        allVar.LSA_Address = LSA_Address
        allVar.Witness = Witness
        allVar.Weather = Weather
        allVar.Activity = Activity
        goToHomePage()
    }
    @IBAction func Save_3(_ sender: UIButton) {
        allVar.Position_Body = Position_Body
        allVar.Livor = Livor
        allVar.Rigor = Rigor
        allVar.Consisent_With_Position = Consisent_With_Position
        allVar.Clothed = Clothed
        allVar.Partially_Clothed = Partially_Clothed
        allVar.Unclothed = Unclothed
        allVar.Dis_Mark = Dis_Mark
        allVar.Body_Temp = Body_Temp
        allVar.Body_Decomp = Body_Decomp
        allVar.Immed_Cause = Immed_Cause
        allVar.Due_to = Due_to
        allVar.Due_to_2 = Due_to_2
        goToHomePage()
    }
    
    let Place_Death = UIPickerView()
    let Injury_Death = UIPickerView()
    
    var place_val: [String] = [String]()
    var injury_val: [String] = [String]()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView2?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView3?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.Death_Date?.delegate = self
        self.Death_Time?.delegate = self
        self.Injury_Date?.delegate = self
        self.Injury_Time?.delegate = self
        self.LS_Date?.delegate = self
        self.LS_Time?.delegate = self
        self.LS_Loc?.delegate = self
        self.LS_CC?.delegate = self
        self.DD_Date?.delegate = self
        self.DD_Time?.delegate = self
        self.DD_Loc?.delegate = self
        self.DD_CC?.delegate = self
        self.Found_Dead_By?.delegate = self
        self.FDB_Address?.delegate = self
        self.Last_Seen_Alive?.delegate = self
        self.LSA_Address?.delegate = self
        self.Witness?.delegate = self
        self.Weather?.delegate = self
        self.Activity?.delegate = self
        self.Position_Body?.delegate = self
        self.Livor?.delegate = self
        self.Rigor?.delegate = self
        self.Consisent_With_Position?.delegate = self
        self.Clothed?.delegate = self
        self.Partially_Clothed?.delegate = self
        self.Unclothed?.delegate = self
        self.Dis_Mark?.delegate = self
        self.Body_Temp?.delegate = self
        self.Body_Decomp?.delegate = self
        self.Immed_Cause?.delegate = self
        self.Due_to?.delegate = self
        self.Due_to_2?.delegate = self
        
        //let Place_Death = UIPickerView()
        Place_Death.tag = 0
        PlaceDeath?.inputView = Place_Death
        Place_Death.delegate = self
        Place_Death.dataSource = self
        place_val = ["DOA", "Decedent's Residence", "Decedent's Workplace", "Inpatient", "ER/Outpatient", "Nursing Home", "Other"]
        
        //let Injury_Death = UIPickerView()
        Injury_Death.tag = 1
        PlaceInjury?.inputView = Injury_Death
        Injury_Death.delegate = self
        Injury_Death.dataSource = self
        injury_val = ["DOA", "Decedent's Residence", "Decedent's Workplace", "Inpatient", "ER/Outpatient", "Nursing Home", "Other"]
        
        if allVar.isPending || allVar.isPublished{
            Death_Date?.text = allVar.Death_Date?.text
            Death_Time?.text = allVar.Death_Time?.text
            Injury_Date?.text = allVar.Injury_Date?.text
            Injury_Time?.text = allVar.Injury_Time?.text
            PlaceDeath?.text = allVar.PlaceDeath?.text
            PlaceInjury?.text = allVar.PlaceInjury?.text
            LS_Date?.text = allVar.LS_Date?.text
            LS_Time?.text = allVar.LS_Time?.text
            LS_Loc?.text = allVar.LS_Loc?.text
            LS_CC?.text = allVar.LS_CC?.text
            DD_Date?.text = allVar.DD_Date?.text
            DD_Time?.text = allVar.DD_Time?.text
            DD_Loc?.text = allVar.DD_Loc?.text
            DD_CC?.text = allVar.DD_CC?.text
            Found_Dead_By?.text = allVar.Found_Dead_By?.text
            FDB_Address?.text = allVar.FDB_Address?.text
            Last_Seen_Alive?.text = allVar.Last_Seen_Alive?.text
            LSA_Address?.text = allVar.LSA_Address?.text
            Witness?.text = allVar.Witness?.text
            Weather?.text = allVar.Weather?.text
            Activity?.text = allVar.Activity?.text
            Position_Body?.text = allVar.Position_Body?.text
            Livor?.text = allVar.Livor?.text
            Rigor?.text = allVar.Rigor?.text
            Consisent_With_Position?.text = allVar.Consisent_With_Position?.text
            Clothed?.text = allVar.Clothed?.text
            Partially_Clothed?.text = allVar.Partially_Clothed?.text
            Unclothed?.text = allVar.Unclothed?.text
            Dis_Mark?.text = allVar.Dis_Mark?.text
            Body_Temp?.text = allVar.Body_Temp?.text
            Body_Decomp?.text = allVar.Body_Decomp?.text
            Immed_Cause?.text = allVar.Immed_Cause?.text
            Due_to?.text = allVar.Due_to?.text
            Due_to_2?.text = allVar.Due_to_2?.text
        }
        
    }
    
    
    func sendToDatabase() {
        // Make sure the case number has been entered
        guard let casenum = allVar.CaseNum?.text, !casenum.isEmpty,
            let county = allVar.County?.text, !county.isEmpty
            else {
            displayMessage(msgTitle: "Error", actionTitle: "OK", message: "No recorded case number and county.")
            return
        }
        
        let url = "https://statsqltest.as.uky.edu/edit_incident_information.php"
             allVar.Death_Date = Death_Date
             allVar.Death_Time = Death_Time
             allVar.Injury_Date = Injury_Date
             allVar.PlaceDeath = PlaceDeath
             allVar.PlaceInjury = PlaceInjury
             allVar.LS_Date = LS_Date
             allVar.LS_Time = LS_Time
             allVar.LS_Loc = LS_Loc
             allVar.LS_CC = LS_CC
             allVar.DD_Date = DD_Date
             allVar.DD_Time = DD_Time
             allVar.DD_Loc = DD_Loc
             allVar.DD_CC = DD_CC
             allVar.Found_Dead_By = Found_Dead_By
             allVar.FDB_Address = FDB_Address
             allVar.Last_Seen_Alive = Last_Seen_Alive
             allVar.LSA_Address = LSA_Address
             allVar.Witness = Witness
             allVar.Weather = Weather
             allVar.Activity = Activity
             allVar.Position_Body = Position_Body
             allVar.Livor = Livor
             allVar.Rigor = Rigor
             allVar.Consisent_With_Position = Consisent_With_Position
             allVar.Clothed = Clothed
             allVar.Partially_Clothed = Partially_Clothed
             allVar.Unclothed = Unclothed
             allVar.Dis_Mark = Dis_Mark
             allVar.Body_Temp = Body_Temp
             allVar.Body_Decomp = Body_Decomp
             allVar.Immed_Cause = Immed_Cause
             allVar.Due_to = Due_to
             allVar.Due_to_2 = Due_to_2
        let params: Parameters =
            [
                "CaseNum": casenum,
                "Version": String(allVar.Version + 1),
                "Death_Date": Death_Date.text!,
                "Death_Time": Death_Time.text!,
                "Injury_Date": Injury_Date.text!,
                "PlaceDeath": PlaceDeath.text!,
                "PlaceInjury": PlaceInjury.text!,
                "LS_Date": LS_Date.text!,
                "LS_Time": LS_Time.text!,
                "LS_Loc": LS_Loc.text!,
                "LS_CC": LS_CC.text!,
                "DD_Date": DD_Date.text!,
                "DD_Time": DD_Time.text!,
                "DD_Loc": DD_Loc.text!,
                "DD_CC": DD_CC.text!,
                "Found_Dead_By": Found_Dead_By.text!,
                "FDB_Address": FDB_Address.text!,
                "Last_Seen_Alive": Last_Seen_Alive.text!,
                "LSA_Address": LSA_Address.text!,
                "Witness": Witness.text!,
                "Weather": Weather.text!,
                "Activity": Activity.text!,
                "Position_Body": Position_Body.text!,
                "Livor": Livor.text!,
                "Rigor": Rigor.text!,
                "Consisent_With_Position": Consisent_With_Position.text!,
                "Clothed": Clothed.text!,
                "Partially_Clothed": Partially_Clothed.text!,
                "Unclothed": Unclothed.text!,
                "Dis_Mark": Dis_Mark.text!,
                "Body_Temp": Body_Temp.text!,
                "Body_Decomp": Body_Decomp.text!,
                "Immed_Cause": Immed_Cause.text!,
                "Due_to": Due_to.text!,
                "Due_to_2": Due_to_2.text!
            ]
        
        Alamofire.request(url, method:.post, parameters:params).validate().responseString {
            response in
            if let result = response.result.value {
                let jsonData = result // as! NSDictionary
                             
                if(!jsonData.contains("success")){
                    // Display an alert if an error and database insert didn't work
                    DispatchQueue.main.async {
                    let alert = UIAlertController(title: "Server error", message: result, preferredStyle: .alert)
                                 
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler:nil))
                                 
                    self.present(alert, animated:true, completion: nil)
                    }
                }
                else {
                    print("success")
                }
            }
        }
    }
    
    
}
