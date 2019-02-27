//
//  SignInViewController.swift
//  MDSI
//
//  Created by Michael Lawson on 2/22/19.
//  Copyright © 2019 Michael Lawson. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController
{

    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var UserPassWordTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        else{
            print("username or password is empty")
            displayMessage(message: "One of the required fields is empty")
            return
        }
        // Pack them up to send in the request
        let httpPostString = ["userID": userID, "password": password] as [String: String]
        let spinner = startSpinner()
        // Construct request
        let url = URL(string: "") // Need to know where server handles authentication
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        // Convert the dictionary to json
        do{
            request.httpBody = try JSONSerialization.data(withJSONObject: httpPostString, options: .prettyPrinted)
        }catch{ // Could not convert NSDictionary to json
            print(error)
            displayMessage(message: "Something went wrong!")
            return
        }
        // Send request
        let task = URLSession.shared.dataTask(with: request)
        {
            (data: Data?, response: URLResponse?, error: Error?) in
            self.stopSpinner(spinner: spinner)
            if error != nil{ // Server side error
                print(String(describing: error))
                self.displayMessage(message: "Could not request authentication")
                return
            }
            do{
                // Convert json to dictionary
                let responseString = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                // Unwrap dictionary and attempt to get stuff
                if let unwrappedResponse = responseString{
                    // Placeholder, we need to know more about server authentication to know what to put here
                    guard let token = unwrappedResponse["token"] as? String, !token.isEmpty
                    else{ // Likely invalid username or password, but it depends on how the server is supposed to respond
                        self.displayMessage(message: "Something went wrong!")
                        return
                    }
                    // Launch a new thread to switch to the homepage
                    DispatchQueue.main.async
                    {
                        let homePage = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                        let appDelegate = UIApplication.shared.delegate
                        appDelegate?.window??.rootViewController = homePage
                    }
                }
                else{
                    print("unwrappedResponse nil")
                    self.displayMessage(message: "Something went wrong")
                    return
                }
            }catch{
                print(error)
                self.displayMessage(message: "Something went wrong!")
                return
            }
        };task.resume()
    }
}
