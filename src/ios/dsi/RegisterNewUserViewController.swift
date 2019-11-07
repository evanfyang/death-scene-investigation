//
//  RegisterNewUserViewController.swift
//  dsi
//
//  Created by Evan Yang on 10/8/19.
//  Copyright © 2019 Najwa. All rights reserved.
//

import UIKit

class RegisterNewUserViewController: UIViewController {

    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    @IBOutlet weak var UserTypeField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var CountyField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    @IBOutlet weak var ConfirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedRegisterButton(_ sender: Any) {
        guard
        let FirstName = FirstNameField.text, !FirstName.isEmpty,
        let LastName = LastNameField.text, !LastName.isEmpty,
        let UserType = UserTypeField.text, !UserType.isEmpty,
        let Email = EmailField.text, !Email.isEmpty,
        let County = CountyField.text, !County.isEmpty,
        let Password = PasswordField.text, !Password.isEmpty,
        let ConfirmPassword = ConfirmPasswordField.text, !ConfirmPassword.isEmpty
        else
        {
            displayMessage(msgTitle: "Error", actionTitle: "OK", message: "One of the required fields is empty.")
            return
        }
        if Password != ConfirmPassword
        {
            displayMessage(msgTitle: "Error", actionTitle: "OK", message: "Your passwords do not match.")
            return
        }
        else
        {
            // Send data to backend for verification
            displayMessage(msgTitle: "Thank You!", actionTitle: "Dismiss", message: "Your registration has been sent to KYVDRS. Allow up to three business days for confirmation.")
            FirstNameField.text = "";
            LastNameField.text = "";
            UserTypeField.text = "";
            EmailField.text = "";
            CountyField.text = "";
            PasswordField.text = "";
            ConfirmPasswordField.text = "";
            return
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
