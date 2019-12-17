//
//  PublishedViewController.swift
//  MDSI form
//
//  Created by Najwa Abu Taha on 4/21/19.
//  Copyright © 2019 Najwa. All rights reserved.
//

import UIKit
import Alamofire


class PublishedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

        
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var formList = [formData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)

        // Do any additional setup after loading the view.
        let params: Parameters=[
            
            "email":Email
            
        ]
        
        let url = "https://statsqltest.as.uky.edu/load_published_forms.php"
        
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
                    guard let formCounty = json["County"] else{ return }
                    guard let formCaseNum = json["CaseNum"] else{ return }
                    guard let formVersion = json["Version"] else{ return }
                    guard let formDateCreated = json["Date_Created"] else { return }
                    self.formList.append(formData(County: formCounty, CaseNum: formCaseNum, Version: formVersion, DateCreated: formDateCreated))
                }
                self.tableView.reloadData()
            }
        }
    }

    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    @IBAction func clickedLogout(_ sender: Any) {
        navigateToLoginPage();
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
