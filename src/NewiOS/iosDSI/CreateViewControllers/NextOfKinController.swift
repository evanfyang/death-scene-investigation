//
//  NextOfKinController.swift
//  iosDSI
//
//  Created by DSI group 2 on 10/21/20.
//

import UIKit

class NextOfKinController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // start coding here
    

    @IBAction func NextButton(_ sender: UIButton) {
        
        // validation
        var isValid = true;
        if(CaseNum.text! == "") {isValid = false}
        if(Version.text! == "") {isValid = false}
        
        // if valid add to the storage
        if(isValid){
            Storage.NextofKin.CaseNum = CaseNum.text!
            Storage.NextofKin.Version = Version.text!
            Storage.NextofKin.Notified_by = Notified_by.text!
            Storage.NextofKin.Date_Notified = Date_Notified.date
            Storage.NextofKin.Time_Notified = Time_Notified.date
            Storage.NextofKin.Name = Name.text!
            Storage.NextofKin.Relationship = Relationship.text!
            Storage.NextofKin.Phone_Number = Phone_Number.text!
            Storage.NextofKin.Address = Address.text!
            Storage.NextofKin.City_1 = City_1.text!
            Storage.NextofKin.State = State.text!
            Storage.NextofKin.Zip_1 = Zip_1.text!
        }
        
    }
}
