//
//  CaseNumberController.swift
//  dsi
//
//  Created by Eura Shin on 11/15/19.
//  Copyright © 2019 Najwa. All rights reserved.
//

import UIKit
import SearchTextField
import Alamofire

// Create Global Struct
var allVar = MDSIDocProperties()

class CaseNumberController: UIViewController {
    @IBOutlet weak var countyField: SearchTextField!
    @IBOutlet weak var caseNumberField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        autocompleteOptions()
    }
    

    @IBAction func createCasePushed(_ sender: Any) {
        // Save global case number variable value
        allVar.CaseNum = caseNumberField
        allVar.County = countyField
        
        // Make sure the case number has been entered
        guard let casenum = caseNumberField.text, !casenum.isEmpty,
        let county = countyField.text, !county.isEmpty
            else {
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "One of the required fields is empty.")
                return
            }
        

        let url = "https://statsqltest.as.uky.edu/start_death_scene_investigation.php"
        let params: Parameters=[ // ADD INVESTIGATOR LATER IN DB
                "casenum":casenum,
                "county": county
        ]
        
        Alamofire.request(url, method:.post, parameters:params).validate().responseString {
            response in
            if let result = response.result.value {
                let jsonData = result // as! NSDictionary
                        
                print(result)
                
                //if there is no error
                if(jsonData.contains("success")){
                    self.caseNumberField.text = ""
                    self.goToDeathSceneInvestigation()
                }
                else {
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
    
    @IBAction func clickedHamburger(_ sender: Any) {
        self.goToTableOfContents()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func autocompleteOptions() {
        countyField.filterStrings([
        "Adair",
        "Allen",
        "Anderson",
        "Ballard",
        "Barren",
        "Bath",
        "Bell",
        "Boone",
        "Bourbon",
        "Boyd",
        "Boyle",
        "Bracken",
        "Breathitt",
        "Breckinridge",
        "Bullitt",
        "Butler",
        "Caldwell",
        "Calloway",
        "Campbell",
        "Carlisle",
        "Carroll",
        "Carter",
        "Casey",
        "Christian",
        "Clark",
        "Clay",
        "Clinton",
        "Crittenden",
        "Cumberland",
        "Daviess",
        "Edmonson",
        "Elliott",
        "Estill",
        "Fayette",
        "Fleming",
        "Floyd",
        "Franklin",
        "Fulton",
        "Gallatin",
        "Garrard",
        "Grant",
        "Graves",
        "Grayson",
        "Green",
        "Greenup",
        "Hancock",
        "Hardin",
        "Harlan",
        "Harrison",
        "Hart",
        "Henderson",
        "Henry",
        "Hickman",
        "Hopkins",
        "Jackson",
        "Jefferson",
        "Jessamine",
        "Johnson",
        "Kenton",
        "Knott",
        "Knox",
        "Larue",
        "Laurel",
        "Lawrence",
        "Lee",
        "Leslie",
        "Letcher",
        "Lewis",
        "Lincoln",
        "Livingston",
        "Logan",
        "Lyon",
        "Madison",
        "Magoffin",
        "Marion",
        "Marshall",
        "Martin",
        "Mason",
        "McCracken",
        "McCreary",
        "McLean",
        "Meade",
        "Menifee",
        "Mercer",
        "Metcalfe",
        "Monroe",
        "Montgomery",
        "Morgan",
        "Muhlenberg",
        "Nelson",
        "Nicholas",
        "Ohio",
        "Oldham",
        "Owen",
        "Owsley",
        "Pendleton",
        "Perry",
        "Pike",
        "Powell",
        "Pulaski",
        "Robertson",
        "Rockcastle",
        "Rowan",
        "Russell",
        "Scott",
        "Shelby",
        "Simpson",
        "Spencer",
        "Taylor",
        "Todd",
        "Trigg",
        "Trimble",
        "Union",
        "Warren",
        "Washington",
        "Wayne",
        "Webster",
        "Whitley",
        "Wolfe",
        "Woodford"])
    }

}
