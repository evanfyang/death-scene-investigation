//
//  SignInViewController.swift
//  MDSI form
//
//  Created by Team Awesome on 4/9/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//


import UIKit
import Alamofire

class LognViewController: UIViewController, UITextFieldDelegate
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
    
    @IBAction func SubmitButton(_ sender: Any) {
        // Early exit if a textfield empty
        
        guard let username = UserNameTextField.text, !username.isEmpty,
            
            let password = UserPassWordTextField.text, !password.isEmpty
            
            else {
                
                displayMessage(msgTitle: "Error", actionTitle: "OK", message: "One of the required fields is empty.")
                
                return
                
        }
        
        /*
         
         if username == "Team6" && password == "1234"
         
         {
         
         goToHomePage()
         
         UserNameTextField.text = ""
         
         UserPassWordTextField.text = ""
         
         }
         
         else
         
         {
         
         displayMessage(msgTitle: "Error", actionTitle: "OK", message: "Username or password incorrect")
         
         }
         
         */
        
        let url = "https://statsqltest.as.uky.edu/authenticate.php" // Location of Database
    
        
        let params: Parameters=[
            
            "email":username,
            
            "password":password
            
        ]
        
        
 
        //  encoding: JSONEncoding.default, headers: header
        
       Alamofire.request(url, method: .post, parameters: params).validate().responseString {
            response in

            if let result = response.result.value {
                let jsonData = result // as! NSDictionary
                
                print(jsonData)
                
                //if there is no error
                if(jsonData.contains("success")){
                    
                    
                    self.goToHomePage()
                    self.UserNameTextField.text = ""
                    self.UserPassWordTextField.text = ""
                    
                }
                else {
                    // Display an alert if an error and database insert didn't work
                    DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Incorrect Username/Password", message: "Please try again.", preferredStyle: .alert)
                            
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler:nil))
                            
                            self.present(alert, animated:true, completion: nil)
                    }
                }
            }
        }
    }
}
      /*
        
        Alamofire.request(url, method: .post)
        
        .validate(contentType: ["application/json"])
        
        .authenticate(user: username, password: password)
        
        .responseJSON() { response in
        
        switch response.result {
        
        case :
        
        print("It worked!")
        
        print(response.result.value)
        
        case .Failure(let error):
        
        print(error)
        
        }
        
        }
        
        
        
        */
       /*
       let header = [
           
           "Content-Type" : "application/json; charset=utf-8"
           
       ]
       */
   
       //.authenticate(user: username, pass: password)
       
       
       /*
       let credentialData = "\(username):\(password)".data(using: String.Encoding.utf8)!
       let base64Credentials = credentialData.base64EncodedString(options: [])
       let headers = ["Authorization": "Basic \(base64Credentials)"]
       */

/*
       Alamofire.request(url,
                         method: .get,
                         parameters: nil,
                         encoding: URLEncoding.default,
                         headers:headers)
           .validate()
           .responseJSON { response in
               if response.result.value != nil{
                   print(response)
               }else{
                   self.goToHomePage()
               }
       }

*/
