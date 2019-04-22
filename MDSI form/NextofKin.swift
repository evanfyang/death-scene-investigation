//
//  NextofKin.swift
//  MDSI form
//
//  Created by Team Awesome on 3/28/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Next_of_Kin: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Notified_by: UITextField!
    @IBOutlet weak var Date_Notified: UITextField!
    @IBOutlet weak var Time_Notified: UITextField!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Relationship: UITextField!
    @IBOutlet weak var Phone_Number: UITextField!
    @IBOutlet weak var Adress: UITextField!
    @IBOutlet weak var City_1: UITextField!
    @IBOutlet weak var State: UITextField!
    @IBOutlet weak var Zip_1: UITextField!

    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func Next(_ sender: UIButton) {
        allVar.Notified_by = Notified_by
        allVar.Date_Notified = Date_Notified
        allVar.Time_Notified = Time_Notified
        allVar.Name = Name
        allVar.Relationship = Relationship
        allVar.Phone_Number = Phone_Number
        allVar.Adress = Adress
        allVar.City_1 = City_1
        allVar.State = State
        allVar.Zip_1 = Zip_1
    }
    
    @IBAction func Save(_ sender: UIButton) {
        allVar.Notified_by = Notified_by
        allVar.Date_Notified = Date_Notified
        allVar.Time_Notified = Time_Notified
        allVar.Name = Name
        allVar.Relationship = Relationship
        allVar.Phone_Number = Phone_Number
        allVar.Adress = Adress
        allVar.City_1 = City_1
        allVar.State = State
        allVar.Zip_1 = Zip_1
        goToHomePage()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.Notified_by?.delegate = self
        self.Date_Notified?.delegate = self
        self.Time_Notified?.delegate = self
        self.Name?.delegate = self
        self.Relationship?.delegate = self
        self.Phone_Number?.delegate = self
        self.Adress?.delegate = self
        self.City_1?.delegate = self
        self.Zip_1?.delegate = self
        self.State?.delegate = self
        
        if allVar.isPending || allVar.isPublished{
            Notified_by?.text = allVar.Notified_by?.text
            Date_Notified?.text = allVar.Date_Notified?.text
            Time_Notified?.text = allVar.Time_Notified?.text
            Name?.text = allVar.Name?.text
            Relationship?.text = allVar.Relationship?.text
            Phone_Number?.text = allVar.Phone_Number?.text
            Adress?.text = allVar.Adress?.text
            City_1?.text = allVar.City_1?.text
            State?.text = allVar.State?.text
            Zip_1?.text = allVar.Zip_1?.text
        }
        
       
        
        print(allVar.CaseNum)
        // Do any additional setup after loading the view.
    }
    
    
    
}

