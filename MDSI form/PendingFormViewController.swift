//
//  PendingFormViewController.swift
//  MDSI form
//
//  Created by Team Awesome on 4/21/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class PendingFormViewController: UIViewController {

    @IBAction func PendingButton(_ sender: UIButton) {
        allVar.isPending = true
    }
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
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
