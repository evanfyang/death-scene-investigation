//
//  IncidentInfoController.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/21/20.
//

import UIKit

class IncidentInfoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // Code goes here
    
    @IBOutlet weak var CaseNum: UITextField!
    @IBOutlet weak var Version: UITextField!
    @IBOutlet weak var Death_Date: UIDatePicker!
    @IBOutlet weak var Death_Time: UIDatePicker!
    @IBOutlet weak var Injury_Date: UIDatePicker!
    
    @IBOutlet weak var Injury_Time: UIDatePicker!
    
    @IBOutlet weak var PlaceDeath: UITextField!
    
    @IBOutlet weak var PlaceInjury: UITextField!
    
    @IBOutlet weak var LS_Date: UIDatePicker!
    
    @IBOutlet weak var LS_Time: UIDatePicker!
    
    
    @IBOutlet weak var LS_Loc: UITextField!
    
    
    @IBOutlet weak var LS_CC: UITextField!
    
    
    @IBOutlet weak var DD_Date: UIDatePicker!
    
    
    
    @IBOutlet weak var DD_Time: UIDatePicker!
    
    
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
    
    
    @IBOutlet weak var Consistent_With_Position: UISwitch!
    
    @IBOutlet weak var Clothed: UISwitch!
    
    
    @IBOutlet weak var Partially_Clothed: UISwitch!
    
    
    @IBOutlet weak var Unclothed: UISwitch!
    
    
    @IBOutlet weak var Dis_Mark: UITextField!
    
    
    @IBOutlet weak var Body_Temp: UITextField!
    
    
    @IBOutlet weak var Body_Decomp: UITextField!
    
    
    @IBOutlet weak var Immed_Cause: UITextField!
    
    
    @IBOutlet weak var Due_To: UITextField!
    
    
    
    @IBOutlet weak var Due_to_2: UITextField!
    
    
    
    
    

    
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        // button code goes here
        var isValid = true
        if(CaseNum.text! == "") {isValid = false}
        if(Version.text! == "") {isValid = false}
        
        if(isValid){
            Storage.IncidentInformation.CaseNum = CaseNum.text!
            Storage.IncidentInformation.Version = Version.text!
            Storage.IncidentInformation.Death_Date = Death_Date.date
            Storage.IncidentInformation.Death_Time = Death_Time.date
            Storage.IncidentInformation.Injury_Date = Injury_Date.date
            Storage.IncidentInformation.Injury_Time = Injury_Time.date
            Storage.IncidentInformation.PlaceDeath = PlaceDeath.text!
            Storage.IncidentInformation.PlaceInjury = PlaceInjury.text!
            Storage.IncidentInformation.LS_Date = LS_Date.date
            Storage.IncidentInformation.LS_Time = LS_Time.date
            Storage.IncidentInformation.LS_Loc = LS_Loc.text!
            Storage.IncidentInformation.LS_CC = LS_CC.text!
            Storage.IncidentInformation.DD_Date = DD_Date.date
            Storage.IncidentInformation.DD_Time = DD_Time.date
            Storage.IncidentInformation.DD_Loc = DD_Loc.text!
            Storage.IncidentInformation.DD_CC = DD_CC.text!
            Storage.IncidentInformation.Found_Dead_By = Found_Dead_By.text!
            Storage.IncidentInformation.FDB_Address = FDB_Address.text!
            Storage.IncidentInformation.Last_Seen_Alive = Last_Seen_Alive.text!
            Storage.IncidentInformation.LSA_Address = LSA_Address.text!
            Storage.IncidentInformation.Witness = Witness.text!
            Storage.IncidentInformation.Weather = Weather.text!
            Storage.IncidentInformation.Activity = Activity.text!
            Storage.IncidentInformation.Position_Body = Position_Body.text!
            Storage.IncidentInformation.Livor = Livor.text!
            Storage.IncidentInformation.Rigor = Rigor.text!
            Storage.IncidentInformation.Consistent_With_Position = Consistent_With_Position.isOn
            Storage.IncidentInformation.Clothed = Clothed.isOn
            Storage.IncidentInformation.Partially_Clothed = Partially_Clothed.isOn
            Storage.IncidentInformation.Unclothed = Unclothed.isOn
            Storage.IncidentInformation.Dis_Mark =  Dis_Mark.text!
            Storage.IncidentInformation.Body_Temp = Body_Temp.text!
            Storage.IncidentInformation.Body_Decomp = Body_Decomp.text!
            Storage.IncidentInformation.Immed_Cause = Immed_Cause.text!
            Storage.IncidentInformation.Due_To = Due_To.text!
            Storage.IncidentInformation.Due_To_2 = Due_to_2.text!
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    
        
        
    }
}
