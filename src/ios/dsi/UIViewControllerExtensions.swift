//
//  UsefulFunctions.swift
//  MDSI form
//
//  Created by Team Awesome on 4/9/19.
//  Copyright © 2019 Team Awesome. All rights reserved.


import Foundation

import UIKit

extension UIViewController
{
    
    func startSpinner()->UIActivityIndicatorView
    {
        let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        spinner.center = view.center
        spinner.hidesWhenStopped = false
        spinner.startAnimating()
        view.addSubview(spinner)
        return spinner
    }
    
    func stopSpinner(spinner: UIActivityIndicatorView)->Void
    {
        DispatchQueue.main.async
            {
                spinner.stopAnimating()
                spinner.removeFromSuperview()
        }
    }
    
    func displayMessage(msgTitle: String, actionTitle: String, message: String)->Void
    {
        DispatchQueue.main.async
            {
                let alertController = UIAlertController(title: msgTitle, message: message, preferredStyle: .alert)
                let OKButton = UIAlertAction(title: actionTitle, style: .default)
                {
                    (action: UIAlertAction!) in
                    DispatchQueue.main.async
                        {
                            self.dismiss(animated: true, completion: nil)
                    }
                }
                alertController.addAction(OKButton)
                self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func goToHomePage()->Void{
        DispatchQueue.main.async
            {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let HomeViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController
                //let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
                //appDelegate.window?.rootViewController = HomeViewController
                self.present(HomeViewController, animated: true, completion: nil)
        }
    }
    
    func goToCaseNumberPage()->Void{
         DispatchQueue.main.async
             {
                let storyBoard = UIStoryboard(name: "Forms", bundle: nil)
                let FormsNavController = storyBoard.instantiateViewController(withIdentifier: "FormsNavigationController") as! UINavigationController
                //let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
                //self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
                //appDelegate.window?.rootViewController = FormsNavController
                self.present(FormsNavController, animated: true, completion: nil)
         }
     }
    
    func goToDeathSceneInvestigation()->Void{
         DispatchQueue.main.async
             {
                let storyBoard = UIStoryboard(name: "Forms", bundle: nil)
                let DSIController = storyBoard.instantiateViewController(withIdentifier: "DeathSceneInvestigationController") as! Death_Scene_Investigation
                //let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
                //appDelegate.window?.rootViewController = DSIController
                self.present(DSIController, animated: true, completion: nil)
         }
     }
    
    func goToTableOfContents()->Void{
         DispatchQueue.main.async
             {
                 let storyBoard = UIStoryboard(name: "Forms", bundle: nil)
                 let DSIController = storyBoard.instantiateViewController(withIdentifier: "TableOfContentsController") as! TableOfContentsTableViewController
                 self.present(DSIController, animated: true, completion: nil)
         }
     }
    
    func navigateToLoginPage()->Void {
        DispatchQueue.main.async
        {
            let alert = UIAlertController(title: "Are you sure you want to logout?", message: nil, preferredStyle: .actionSheet)
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

            let logout = UIAlertAction(title: "Logout", style: .default, handler: { action in
                self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
            })
            logout.setValue(UIColor.red, forKey: "titleTextColor")
            alert.addAction(logout)
            self.present(alert, animated: true)
        }
    }
    
    func dateToString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" //Your date format
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.timeZone = TimeZone(abbreviation:"EST" )
        dateFormatter.locale =  Locale(identifier: "en_US_POSIX")
        
        let date = dateFormatter.string(from: date)
        
        return date
    }
    
    func timeToString(time: Date) -> String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm:ss" //Your date format
        timeFormatter.locale =  Locale(identifier: "en_US_POSIX")
        timeFormatter.timeZone = TimeZone(abbreviation: "EST")
        
        let time = timeFormatter.string(from: time)
        
        return time
    }
    
    // Function to return a dicrtionary of of body parameter values for all text fields that are not empty
    func buildParameters(names:Array<String>, values: Array<String>) -> Dictionary<String, Any> {

        var parameters = [String: Any]()
        
        var i=0;
        for val in values {
            if(!val.isEmpty) { // Should include in parameters
                parameters[names[i]] = val
            }
            else if(names[i].contains("Date")) { // Cannot leave empty string for date
               // let date = stringToDate(dateString: "0000-00-00")
                
                parameters[names[i]] = "2000-01-01"
            }
            else if(names[i].contains("Time")) { // Cannot leave empty string for time
                //let time = stringToTime(timeString: "00:00:00")
            
                parameters[names[i]] = "00:00:00"
            }
            
            i = i + 1
        }
        
        return(parameters);
    }
    
}
