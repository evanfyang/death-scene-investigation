//
//  ViewController.swift
//  MDSI form
//
//  Created by Team Awesome on 3/28/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import SearchTextField


// Create Global Struct
var allVar = MDSIDocProperties()

class Death_Scene_Investigation: UIViewController, UIPickerViewDelegate, UITextFieldDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return causes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return causes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Suspected?.text = causes[row]
        view.endEditing(true)
    }
    
    

    @IBOutlet weak var CaseNum: UITextField!
    @IBOutlet weak var Coroner_Deputy: SearchTextField!
    @IBOutlet weak var County: UITextField!
    @IBOutlet weak var Date_of_Call: UITextField!
    @IBOutlet weak var Time_of_Call: UITextField!
    @IBOutlet weak var Person_Calling: UITextField!
    @IBOutlet weak var Police_Agency: UITextField!
    @IBOutlet weak var Time_of_Arrival: UITextField!
    @IBOutlet weak var Suspected: UITextField!
    
    
    
    @IBAction func Next(_ sender: UIButton) {
        // Add Value from each form to allVar struct
        allVar.CaseNum = CaseNum
        allVar.Coroner_Deputy = Coroner_Deputy
        allVar.County = County
        allVar.Date_of_Call = Date_of_Call
        allVar.Time_of_Call = Time_of_Call
        allVar.Person_Calling = Person_Calling
        allVar.Police_Agency = Police_Agency
        allVar.Time_of_Arrival = Time_of_Arrival
        allVar.Suspected = Suspected

    }
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBAction func Save(_ sender: UIButton) {
        allVar.CaseNum = CaseNum
        allVar.Coroner_Deputy = Coroner_Deputy
        allVar.County = County
        allVar.Date_of_Call = Date_of_Call
        allVar.Time_of_Call = Time_of_Call
        allVar.Person_Calling = Person_Calling
        allVar.Police_Agency = Police_Agency
        allVar.Time_of_Arrival = Time_of_Arrival
        allVar.Suspected = Suspected
        goToHomePage()
    }
    
    
    var causes: [String] = [String]()

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        // Do any additional setup after loading the view.
        self.CaseNum?.delegate = self
        self.Coroner_Deputy?.delegate = self
        self.County?.delegate = self
        self.Date_of_Call?.delegate = self
        self.Time_of_Call?.delegate = self
        self.Person_Calling?.delegate = self
        self.Police_Agency?.delegate = self
        self.Time_of_Arrival?.delegate = self
        
        let Suspected_Cause = UIPickerView()
        Suspected?.inputView = Suspected_Cause
        
        Suspected_Cause.delegate = self
        //Suspected_Cause.dataSource = self
        
        autocompleteOptions()

        causes = ["Natural", "Suicide", "Accidental", "Homicide", "Pending", "Undetermined"]
        
        if allVar.isPending || allVar.isPublished{
            CaseNum?.text = allVar.CaseNum?.text
            Coroner_Deputy?.text = allVar.Coroner_Deputy?.text
            County?.text = allVar.County?.text
            Date_of_Call?.text = allVar.Date_of_Call?.text
            Time_of_Call?.text = allVar.Time_of_Call?.text
            Person_Calling?.text = allVar.Person_Calling?.text
            Police_Agency?.text = allVar.Police_Agency?.text
            Time_of_Arrival?.text = allVar.Time_of_Arrival?.text
            Suspected?.text = allVar.Suspected?.text
        }
        
    
    }
    
    
    func autocompleteOptions() {
        Coroner_Deputy.filterStrings(["Trent", "Evan", "Eura","Matthew"])
    }

}

