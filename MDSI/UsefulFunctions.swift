//
//  UsefulFunctions.swift
//  MDSI
//
//  Created by Michael Lawson on 2/24/19.
//  Copyright © 2019 Michael Lawson. All rights reserved.
//

import UIKit

extension UIViewController
{
    func startSpinner()->UIActivityIndicatorView
    {
        let spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
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
            let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
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
}
