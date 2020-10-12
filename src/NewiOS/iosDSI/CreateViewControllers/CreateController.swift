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
    
    @IBOutlet weak var CaseNumber: UITextField!
    @IBOutlet weak var County: UITextField!
    
    @IBAction func Create(_ sender: Any) {
        Storage.Create.CaseNumber = CaseNumber.text!
        Storage.Create.County = County.text!
    }
}
