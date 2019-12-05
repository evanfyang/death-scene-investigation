//
//  NewFormViewController.swift
//  MDSI
//
//  Created by Najwa Abu Taha on 4/20/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit
import Alamofire
import Foundation

var CaseNumber: String = "" // Global to track the casenumber

class NewFormViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func addFormClicked(_ sender: Any) {
        self.goToCaseNumberPage()
    }
    @IBOutlet weak var tableView: UITableView!
    
    var formList = [formData]()
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        super.prepare(for: segue, sender: sender)

        if let secondViewController = segue.destination as? CaseNumberController {
            secondViewController.modalPresentationStyle = .fullScreen
        }
    }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)

        // Do any additional setup after loading the view.
        

        let params: Parameters=[
            
            "email":Email
            
        ]
        
        let url = "https://statsqltest.as.uky.edu/load_open_forms.php"
        
        Alamofire.request(url, method: .post, parameters: params).validate().responseString {
        
            response in
            
                
                if let result = response.result.value {
                    let data = result.data(using: .utf8)!
                    guard let jsonArray = try? JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [Dictionary<String,String>]
                        else{ print("failedh")
                            return
                        }
                    //print(jsonArray) // use the json here
                    for json in jsonArray {
                        guard let County = json["County"] else{ return }
                        guard let CaseNum = json["CaseNum"] else{ return }
                        guard let Version = json["Version"] else{ return }
                        guard let DateCreated = json["Date_Created"] else { return }
                        self.formList.append(formData(County: County, CaseNum: CaseNum, Version: Version, DateCreated: DateCreated))
                    }
                    self.tableView.reloadData()
                    print("hello")
                }

        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return formList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentForm = formList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "Case Number: " + String(currentForm.CaseNum)
        cell.detailTextLabel?.text = "County: \(currentForm.County), " + "Date Created: \(currentForm.DateCreated)"
        return cell
    }
    
    @IBOutlet weak var ScrollView: UIScrollView!
   

    @IBAction func addButtonClicked(_ sender: Any) {
        
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
    
    struct formData {
        
        let County: String
        let CaseNum: String
        let Version: String
        let DateCreated: String
        
        public init(County: String, CaseNum: String, Version: String, DateCreated: String) {
            self.County = County
            self.CaseNum = CaseNum
            self.Version = Version
            self.DateCreated = DateCreated
        }
    }

}

