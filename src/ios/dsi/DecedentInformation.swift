//
//  DecedentInformation.swift
//  MDSI form
//
//  Created by Team Awesome on 3/31/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Decedent_Information: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == Race_Pick){
            return race_val.count
            
        }
        else if (pickerView == Ethn_Pick){
            return ethn_val.count
            
        }
        else if (pickerView == Marit_Pick){
            return marit_stat.count
            
        }
        else if (pickerView == Educ_Pick){
            return educ_val.count
            
        }
        else if (pickerView == Empl_Pick){
            return empl_val.count
            
        }
        else{
            return 1
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == Race_Pick){
            return race_val[row]
            
        }
        else if (pickerView == Ethn_Pick){
            return ethn_val[row]
            
        }
        else if (pickerView == Marit_Pick){
            return marit_stat[row]
            
        }
        else if (pickerView == Educ_Pick){
            return educ_val[row]
            
        }
        else if (pickerView == Empl_Pick){
            return empl_val[row]
            
        }
        else{
            return "Error"
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == Race_Pick){
            Race?.text = race_val[row]
             view.endEditing(true)
        }
        else if(pickerView == Ethn_Pick){
            Ethnicity?.text = ethn_val[row]
             view.endEditing(true)
        }
        else if(pickerView == Marit_Pick){
            Marital_Status?.text = marit_stat[row]
             view.endEditing(true)
        }
        else if(pickerView == Educ_Pick){
            Education?.text = educ_val[row]
             view.endEditing(true)
        }
        else if(pickerView == Empl_Pick){
            Employment?.text = empl_val[row]
             view.endEditing(true)
        }
    }
    
    @IBOutlet weak var First_Name: UITextField!
    @IBOutlet weak var Last_Name: UITextField!
    @IBOutlet weak var Gender: UITextField!
    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var Date_of_Birth: UIDatePicker!
    @IBOutlet weak var Birth_Place: UITextField!
    @IBOutlet weak var SSN_Num: UITextField!
    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var Country_of_Res: UITextField!
    @IBOutlet weak var State_of_Res: UITextField!
    @IBOutlet weak var Zip: UITextField!
    @IBOutlet weak var Height: UITextField!
    @IBOutlet weak var Weight: UITextField!
    @IBOutlet weak var Eyes: UITextField!
    @IBOutlet weak var Hair: UITextField!
    @IBOutlet weak var Race: UITextField!
    @IBOutlet weak var Ethnicity: UITextField!
    @IBOutlet weak var Marital_Status: UITextField!
    @IBOutlet weak var Surving_Spouse: UITextField!
    @IBOutlet weak var Mother_MN: UITextField!
    @IBOutlet weak var Father_N: UITextField!
    @IBOutlet weak var Pregnant: UISwitch!
    @IBOutlet weak var Homeless: UISwitch!
    @IBOutlet weak var Veteran: UISwitch!
    @IBOutlet weak var Retired: UISwitch!
    @IBOutlet weak var Active: UISwitch!
    @IBOutlet weak var other: UISwitch!
    @IBOutlet weak var Branch: UITextField!
    @IBOutlet weak var Last_Tour: UITextField!
    @IBOutlet weak var Education: UITextField!
    @IBOutlet weak var Employment: UITextField!
    @IBOutlet weak var Industry: UITextField!
    @IBOutlet weak var Current_Occupation: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var ScrollView2: UIScrollView!
    @IBOutlet weak var ScrollView3: UIScrollView!
    
    @IBAction func Next_1(_ sender: UIButton) {
        allVar.First_Name = First_Name
        allVar.Last_Name = Last_Name
        allVar.Gender = Gender
        allVar.Age = Age
        allVar.Date_of_Birth = Date_of_Birth
        allVar.Birth_Place = Birth_Place
        allVar.SSN_Num = SSN_Num
        allVar.Address = Address
        allVar.City = City
        allVar.Country_of_Res = Country_of_Res
        allVar.State_of_Res = State_of_Res
        allVar.Zip = Zip
        /*
        allVar.Height = Height
        allVar.Weight = Weight
        allVar.Eyes = Eyes
        allVar.Hair = Hair
        allVar.Race = Race
        allVar.Ethnicity = Ethnicity
        allVar.Marital_Status = Marital_Status
        allVar.Surving_Spouse = Surving_Spouse
        allVar.Mother_MN = Mother_MN
        allVar.Father_N = Father_N
        allVar.Pregnant = Pregnant
        allVar.Homeless = Homeless
        allVar.Veteran  = Veteran
        allVar.Retired = Retired
        allVar.Active = Active
        allVar.other = other
        allVar.Branch = Branch
        allVar.Last_Tour = Last_Tour
        allVar.Education = Education
        allVar.Employment = Employment
        allVar.Industry = Industry
        allVar.Current_Occupation = Current_Occupation*/
        
        
    }
    @IBAction func Next_2(_ sender: UIButton) {
       
    }
    @IBAction func Next_3(_ sender: UIButton) {
        
    }
    
    
    @IBAction func Save_1(_ sender: UIButton) {
        allVar.First_Name = First_Name
        allVar.Last_Name = Last_Name
        allVar.Gender = Gender
        allVar.Age = Age
        allVar.Date_of_Birth = Date_of_Birth
        allVar.Birth_Place = Birth_Place
        allVar.SSN_Num = SSN_Num
        allVar.Address = Address
        allVar.City = City
        allVar.Country_of_Res = Country_of_Res
        allVar.State_of_Res = State_of_Res
        allVar.Zip = Zip
    
        goToHomePage()
    }
    @IBAction func Save_2(_ sender: UIButton) {
        allVar.Height = Height
        allVar.Weight = Weight
        allVar.Eyes = Eyes
        allVar.Hair = Hair
        allVar.Race = Race
        allVar.Ethnicity = Ethnicity
        allVar.Marital_Status = Marital_Status
        allVar.Surving_Spouse = Surving_Spouse
        allVar.Mother_MN = Mother_MN
        allVar.Father_N = Father_N
        
        goToHomePage()
    }
    @IBAction func Save_3(_ sender: UIButton) {
        allVar.Pregnant = Pregnant
        allVar.Homeless = Homeless
        allVar.Veteran  = Veteran
        allVar.Retired = Retired
        allVar.Active = Active
        allVar.other = other
        allVar.Branch = Branch
        allVar.Last_Tour = Last_Tour
        allVar.Education = Education
        allVar.Employment = Employment
        allVar.Industry = Industry
        allVar.Current_Occupation = Current_Occupation
        
        goToHomePage()
    }
    
    let Race_Pick = UIPickerView()
    let Ethn_Pick = UIPickerView()
    let Marit_Pick = UIPickerView()
    let Educ_Pick = UIPickerView()
    let Empl_Pick = UIPickerView()
    
    var race_val: [String] = [String]()
    var ethn_val: [String] = [String]()
    var marit_stat: [String] = [String]()
    var educ_val: [String] = [String]()
    var empl_val: [String] = [String]()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView2?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        ScrollView3?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.First_Name?.delegate = self
        self.Last_Name?.delegate = self
        self.Gender?.delegate = self
        self.Age?.delegate = self
        //self.Date_Of_Birth?.delegate = self
        self.Birth_Place?.delegate = self
        self.SSN_Num?.delegate = self
        self.Address?.delegate = self
        self.City?.delegate = self
        self.Country_of_Res?.delegate = self
        self.State_of_Res?.delegate = self
        self.Zip?.delegate = self
        self.Height?.delegate = self
        self.Weight?.delegate = self
        self.Eyes?.delegate = self
        self.Hair?.delegate = self
        self.Surving_Spouse?.delegate = self
        self.Mother_MN?.delegate = self
        self.Father_N?.delegate = self
        //self.Pregnant?.delegate = self
        //self.Homeless?.delegate = self
        //self.Veteran?.delegate = self
        //self.Retired?.delegate = self
        //self.Active?.delegate = self
        //self.other?.delegate = self
        self.Branch?.delegate = self
        self.Last_Tour?.delegate = self
        self.Industry?.delegate = self
        self.Current_Occupation?.delegate = self
        
        // Do any additional setup after loading the view.
        print(allVar.CaseNum as Any)
        //let Race_Pick = UIPickerView()
        Race_Pick.tag = 0
        Race?.inputView = Race_Pick
        Race_Pick.delegate = self
        Race_Pick.dataSource = self
        race_val = ["White", "Black", "Asian", "American Indian", "Alaskan Native", "Pacific Islander", "Mulitracial", "Unknown"]
        
        //let Ethn_Pick = UIPickerView()
        Ethn_Pick.tag = 1
        Ethnicity?.inputView = Ethn_Pick
        Ethn_Pick.delegate = self
        Ethn_Pick.dataSource = self
        ethn_val = ["Hispanic", "Not of Hispanic Origin", "Unknown"]
        
        //let Marit_Pick = UIPickerView()
        Marit_Pick.tag = 2
        Marital_Status?.inputView = Marit_Pick
        Marit_Pick.delegate = self
        Marit_Pick.dataSource = self
        marit_stat = ["Never Married", "Separated", "Divorced", "Married", "Widowed", "Domestic Partnership"]
        
        //let Educ_Pick = UIPickerView()
        Educ_Pick.tag = 3
        Education?.inputView = Educ_Pick
        Educ_Pick.delegate = self
        Educ_Pick.dataSource = self
        educ_val = ["Elementary School", "Middle School", "Jr. High School", "High School", "1 yr. College/Tech School", "2 yrs. College/Tech School", "3 yrs. College/Tech School", "4 yr. College/Tech School", "1+ yrs. Post Graduate", "Unknown"]
        
        //let Empl_Pick = UIPickerView()
        Empl_Pick.tag = 4
        Employment?.inputView = Empl_Pick
        Empl_Pick.delegate = self
        Empl_Pick.dataSource = self
        empl_val = ["Employed", "Unemployed", "Homemaker", "Volunteer", "Retired", "Student", "Disabled", "Other", "Unknown"]
        
        if allVar.isPending || allVar.isPublished{
            First_Name?.text = allVar.First_Name?.text
            Last_Name?.text = allVar.Last_Name?.text
            Gender?.text = allVar.Gender?.text
            Age?.text = allVar.Age?.text
            Birth_Place?.text = allVar.Birth_Place?.text
            SSN_Num?.text = allVar.SSN_Num?.text
            Address?.text = allVar.Address?.text
            City?.text = allVar.City?.text
            Country_of_Res?.text = allVar.Country_of_Res?.text
            State_of_Res?.text = allVar.State_of_Res?.text
            Zip?.text = allVar.Zip?.text
            Height?.text = allVar.Height?.text
            Weight?.text = allVar.Weight?.text
            Eyes?.text = allVar.Eyes?.text
            Hair?.text = allVar.Hair?.text
            Race?.text = allVar.Race?.text
            Ethnicity?.text = allVar.Ethnicity?.text
            Marital_Status?.text = allVar.Marital_Status?.text
            Surving_Spouse?.text = allVar.Surving_Spouse?.text
            Mother_MN?.text = allVar.Mother_MN?.text
            Father_N?.text = allVar.Father_N?.text
            Pregnant.isOn = allVar.Pregnant.isOn
            Homeless.isOn = allVar.Homeless.isOn
            Veteran.isOn = allVar.Veteran.isOn
            Retired.isOn = allVar.Retired.isOn
            Active.isOn = allVar.Active.isOn
            other.isOn = allVar.other.isOn
            Branch?.text = allVar.Branch?.text
            Last_Tour?.text = allVar.Last_Tour?.text
            Education?.text = allVar.Education?.text
            Employment?.text = allVar.Employment?.text
            Industry?.text = allVar.Industry?.text
            Current_Occupation?.text = allVar.Current_Occupation?.text
        }


    }
    
    
}
