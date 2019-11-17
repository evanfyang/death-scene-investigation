//
//  CaseNumberController.swift
//  dsi
//
//  Created by Eura Shin on 11/15/19.
//  Copyright © 2019 Najwa. All rights reserved.
//

import UIKit
import Alamofire

class CaseNumberController: UIViewController {
    
    @IBOutlet weak var caseNumberField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func createCasePushed(_ sender: Any) {
        // Make sure the case number has been entered
        guard let casenum = caseNumberField.text, !casenum.isEmpty
            else {
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "One of the required fields is empty.")
                return
            }
        
        let url = "https://statsqltest.as.uky.edu/start_death_scene_investigation.php"
        let params: Parameters=[ // ADD INVESTIGATOR LATER IN DB
                "casenum":casenum,
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
