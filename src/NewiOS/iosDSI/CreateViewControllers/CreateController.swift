//
//  CreateController.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/12/20.
//

import UIKit

class CreateController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var caseNum: UITextField!
    @IBOutlet weak var county: UITextField!
    
    // Button!
    @IBAction func Create(_ sender: Any) {
        
        var correct = true
        
        if caseNum.text != "" {}
        else {
            correct = false
        }
        
        if county.text! != "Jefferson" || county.text != "" {
            correct = false
        }
        
        if correct {
            Storage.Create.CaseNumber = caseNum.text!
            Storage.Create.County = county.text!
            
            // Transition here
        }
        else {
            print("wrong")
        }
    }
}
