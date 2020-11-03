//
//  DecedentController.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/21/20.
//

import UIKit

class DecedentController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // code goes here

    @IBAction func NextButton(_ sender: UIButton) {
        
        // button code goes here
        var isValid = true
        if(CaseNum.text! == "") {isValid = false}
        if(Version.text! == "") {isValid = false}
        
        if(isValid){
            Storage.DecedentInformation.CaseNum = CaseNum.text!
            Storage.DecedentInformation.Version = Version.text!
            Storage.DecedentInformation.First_Name = First_Name.text!
            Storage.DecedentInformation.Last_Name = Last_Name.text!
            Storage.DecedentInformation.Gender = Gender.text!
            Storage.DecedentInformation.Age = Age.text!
            Storage.DecedentInformation.Birth_Place = Birth_Place.text!
            Storage.DecedentInformation.SSN_Num = SSN_Num.text!
            Storage.DecedentInformation.Address = Address.text!
            Storage.DecedentInformation.City = City.text!
            Storage.DecedentInformation.Country_of_Res = Country_of_Res.text!
            Storage.DecedentInformation.State_of_Res = State_of_Res.text!
            Storage.DecedentInformation.Zip = Zip.text!
            Storage.DecedentInformation.Height = Height.text!
            Storage.DecedentInformation.Weight = Weight.text!
            Storage.DecedentInformation.Eyes = Eyes.text!
            Storage.DecedentInformation.Hair = Hair.text!
            Storage.DecedentInformation.Race = Race.text!
            Storage.DecedentInformation.Ethnicity = Ethnicity.text!
            Storage.DecedentInformation.Marital_Status = Marital_Status.text!
            Storage.DecedentInformation.Surviving_Spouse = Surviving_Spouse.text!
            Storage.DecedentInformation.Mother_MN = Mother_MN.text!
            Storage.DecedentInformation.Father_N = Father_N.text!
            Storage.DecedentInformation.Pregnant = Pregnant.isOn
            Storage.DecedentInformation.Homeless = Homeless.isOn
            Storage.DecedentInformation.Veteran = Veteran.isOn
            Storage.DecedentInformation.Retired = Retired.isOn
            Storage.DecedentInformation.Active = Active.text!
            Storage.DecedentInformation.other1 = other1.isOn
            Storage.DecedentInformation.other_field = other_field.text!
            Storage.DecedentInformation.Branch = Branch.text!
            Storage.DecedentInformation.Last_Tour = Last_Tour.text!
            Storage.DecedentInformation.Education = Education.text!
            Storage.DecedentInformation.Employment = Employment.text!
            Storage.DecedentInformation.Industry = Industry.text!
            Storage.DecedentInformation.Current_Occupation = Current_Occupation.text!
            
        }
    }
}
