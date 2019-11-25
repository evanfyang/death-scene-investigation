//
//  TableOfContentsTableViewController.swift
//  dsi
//
//  Created by Evan Yang on 11/17/19.
//  Copyright © 2019 Najwa. All rights reserved.
//

import Foundation
import UIKit

class TableOfContentsTableViewController: UITableViewController {

    var sectionNames = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionNames = ["1. Death Scene Investigation", "2. Decedent Information", "3. Next of Kin", "4. Incident Information", "5. Investigation", "6. Case History", "7. Narrative/Comments", "8. Pills on Scene"]
        // Do any additional setup after loading the view.
    }
    // 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 2
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionNames.count
    }

    // 3
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)

        cell.textLabel?.text = sectionNames[indexPath.row]

        return cell
    }
}
