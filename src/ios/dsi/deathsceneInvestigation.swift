//
//  ViewController.swift
//  MDSI form
//
//  Created by Team Awesome on 3/28/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import SearchTextField
import Alamofire


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
    
    

    @IBOutlet weak var Coroner_Deputy: SearchTextField!
    @IBOutlet weak var Date_of_Call: UITextField!
    @IBOutlet weak var Time_of_Call: UITextField!
    @IBOutlet weak var Person_Calling: UITextField!
    @IBOutlet weak var Police_Agency: UITextField!
    @IBOutlet weak var Time_of_Arrival: UITextField!
    @IBOutlet weak var Suspected: UITextField!
    
    
    
    @IBAction func Next(_ sender: UIButton) {
        // Add Value from each form to allVar struct
        allVar.Coroner_Deputy = Coroner_Deputy
        allVar.Date_of_Call = Date_of_Call
        allVar.Time_of_Call = Time_of_Call
        allVar.Person_Calling = Person_Calling
        allVar.Police_Agency = Police_Agency
        allVar.Time_of_Arrival = Time_of_Arrival
        allVar.Suspected = Suspected
        
        // Make sure the case number has been entered
        guard let casenum = allVar.CaseNum.text, !casenum.isEmpty,
            let county = allVar.County.text, !county.isEmpty
            else {
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "No recorded case number and county.")
                return
            }
        

        let url = "https://statsqltest.as.uky.edu/start_death_scene_investigation.php"
        
        let params: Parameters=[
                "CaseNum":casenum,
                "County": county,
                "Version": 0,
                "Coroner_Deputy": Coroner_Deputy.text!,
                "Date_of_Call": Date_of_Call.text!,
                "Time_of_Call": Time_of_Call.text!,
                "Person_Calling": Person_Calling.text!,
                "Police_Agency": Police_Agency.text!,
                "Time_of_Arrival": Time_of_Arrival.text!,
                "Suspected": Suspected.text!
        ]
        
        Alamofire.request(url, method:.post, parameters:params).validate().responseString {
            response in
            if let result = response.result.value {
                let jsonData = result // as! NSDictionary
                        
                print(result)
                
                if(!jsonData.contains("success")){
                    // Display an alert if an error and database insert didn't work
                    DispatchQueue.main.async {
                        let alert = UIAlertController(title: "Server error", message: result, preferredStyle: .alert)
                            
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler:nil))
                            
                            self.present(alert, animated:true, completion: nil)
                    }
                }
            }
        }
    }
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func Save(_ sender: UIButton) {
        allVar.Coroner_Deputy = Coroner_Deputy
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
        self.Coroner_Deputy?.delegate = self
        self.Date_of_Call?.delegate = self
        self.Time_of_Call?.delegate = self
        self.Person_Calling?.delegate = self
        self.Police_Agency?.delegate = self
        self.Time_of_Arrival?.delegate = self
        
        let Suspected_Cause = UIPickerView()
        Suspected?.inputView = Suspected_Cause
        
        Suspected_Cause.delegate = self
        //Suspected_Cause.dataSource = self
        
        causes = ["Natural", "Suicide", "Accidental", "Homicide", "Pending", "Undetermined"]
        
        if allVar.isPending || allVar.isPublished{
            Coroner_Deputy?.text = allVar.Coroner_Deputy?.text
            Date_of_Call?.text = allVar.Date_of_Call?.text
            Time_of_Call?.text = allVar.Time_of_Call?.text
            Person_Calling?.text = allVar.Person_Calling?.text
            Police_Agency?.text = allVar.Police_Agency?.text
            Time_of_Arrival?.text = allVar.Time_of_Arrival?.text
            Suspected?.text = allVar.Suspected?.text
        }
    }
    

}

