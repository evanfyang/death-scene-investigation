//
//  NewFormViewController.swift
//  MDSI
//
//  Created by Najwa Abu Taha on 4/20/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class NewFormViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ScrollView: UIScrollView!
   
    @IBAction func Button(_ sender: UIButton) {
    }
    @IBAction func clickedLogout(_ sender: Any) {
        navigateToLoginPage();
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
