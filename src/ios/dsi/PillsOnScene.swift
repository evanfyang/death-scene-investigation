//
//  Pills_On_Scene.swift
//  PillsOnScene
//
//  Created by Team Awesome on 4/16/19.
//  Copyright © 2019 Team Awesome. All rights reserved.
//

import UIKit

class Pills_On_Scene: UIViewController, UITextFieldDelegate{
    
    var isPending = false
    
    @IBOutlet weak var NameOfDrug: UITextField!
    @IBOutlet weak var DateFilled: UITextField!
    @IBOutlet weak var RxNum: UITextField!
    @IBOutlet weak var NameOnRx: UITextField!
    @IBOutlet weak var Dosing: UITextField!
    @IBOutlet weak var Strength: UITextField!
    @IBOutlet weak var RxQuantity: UITextField!
    @IBOutlet weak var QuantityRemaining: UITextField!
    @IBOutlet weak var PharmName: UITextField!
    @IBOutlet weak var PharmCity: UITextField!
    @IBOutlet weak var Provider: UITextField!
    @IBOutlet weak var PillTable: UITableView!
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBAction func Save(_ sender: UIButton) {
        allVar.PillTable = PillTable
        goToHomePage()
    }
    @IBAction func Next(_ sender: UIButton) {
        allVar.PillTable = PillTable
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ScrollView?.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
        self.NameOfDrug?.delegate = self
        self.DateFilled?.delegate = self
        self.RxNum?.delegate = self
        self.NameOnRx?.delegate = self
        self.Dosing?.delegate = self
        self.Strength?.delegate = self
        self.RxQuantity?.delegate = self
        self.QuantityRemaining?.delegate = self
        self.PharmName?.delegate = self
        self.PharmCity?.delegate = self
        self.Provider?.delegate = self
        // Do any additional setup after loading the view.
        
        PillTable.layer.borderColor = UIColor.lightGray.cgColor
        PillTable.layer.borderWidth = 0.5
        
        if allVar.isPending || allVar.isPublished{
            PillTable?.dataSource = allVar.PillTable?.dataSource
            
        }
    }
    
    var TableData: [String] = []
    
    @IBAction func AddItem(_ sender: Any) {
        var Pill: String = ""
        if let Dname = NameOfDrug.text {
            Pill += "\(Dname), "
            NameOfDrug.text = ""
        }
        if let Dfill = DateFilled.text {
            Pill += "\(Dfill), "
            DateFilled.text = ""
        }
        if let num = RxNum.text {
            Pill += "\(num), "
            RxNum.text = ""
        }
        if let nameRx = NameOnRx.text {
            Pill += "\(nameRx), "
            NameOnRx.text = ""
        }
        if let dose = Dosing.text {
            Pill += "\(dose), "
            Dosing.text = ""
        }
        if let str = Strength.text {
            Pill += "\(str), "
            Strength.text = ""
        }
        if let Rxq = RxQuantity.text {
            Pill += "\(Rxq), "
            RxQuantity.text = ""
        }
        if let qrem = QuantityRemaining.text {
            Pill += "\(qrem), "
            QuantityRemaining.text = ""
        }
        if let Pname = PharmName.text {
            Pill += "\(Pname), "
            PharmName.text = ""
        }
        if let Pcity = PharmCity.text {
            Pill += "\(Pcity), "
            PharmCity.text = ""
        }
        if let prov = Provider.text {
            Pill += "\(prov)"
            Provider.text = ""
        }
        print(Pill)
        self.add(Pill)
    }
    
    func add(_ pill: String) {
        let index = 0
        TableData.insert(pill, at: index)
        let indexPath = IndexPath(row: index, section: 0)
        PillTable.insertRows(at: [indexPath], with: .left)
    }
}
    extension Pills_On_Scene: UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TableData.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            let pill = TableData[indexPath.row]
            cell.textLabel?.text = pill
            return cell
        }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            guard editingStyle == .delete else {return}
            TableData.remove(at: indexPath.row)
            PillTable.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    

