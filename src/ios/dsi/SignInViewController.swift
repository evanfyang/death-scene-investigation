//
//  SignInViewController.swift
//  MDSI form
//
//  Created by Team Awesome on 4/9/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//


import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var UserPassWordTextField: UITextField!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        
        // Do any additional setup after loading the view.
        self.UserNameTextField?.delegate = self
        self.UserPassWordTextField?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SubmitButton(_ sender: Any)
    {
        // Early exit if a textfield empty
        guard let userID = UserNameTextField.text, !userID.isEmpty,
            let password = UserPassWordTextField.text, !password.isEmpty
            else {
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "One of the required fields is empty.")
                return
            }
        if userID == "Team6"
        {
            if password == "1234"
            {
                goToHomePage()
            }
            else
            {
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "Username or password incorrect")
            }
        }
    }
}
