//
//  CreateController.swift
//  iosDSI
//
//  Created by DSI group 2 on 10/12/20.
//

import UIKit

class CreateController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // set up outlets
    @IBOutlet weak var caseNum: UITextField!
    @IBOutlet weak var county: UITextField!
    
    // implement the button
    @IBAction func Create(_ sender: Any) {
        
        var correct = true
        
        // validation
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
        // printed for debugging purposes
        else {
            print("wrong")
        }
    }
}
