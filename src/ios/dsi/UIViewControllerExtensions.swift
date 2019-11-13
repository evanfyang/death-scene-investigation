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
                self.present(HomeViewController, animated: true, completion: nil)
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
    
}
