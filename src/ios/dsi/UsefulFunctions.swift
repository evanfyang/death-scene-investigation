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
    
    func displayMessage(message: String)->Void
    {
        DispatchQueue.main.async
            {
                let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
                let OKButton = UIAlertAction(title: "OK", style: .default)
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
                let homePage = storyBoard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController
                let appDelegate = UIApplication.shared.delegate
                appDelegate?.window??.rootViewController = homePage
        }
    }
    
}
