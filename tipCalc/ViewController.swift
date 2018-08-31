//
//  ViewController.swift
//  tipCalc
//
//  Created by Chris Martinez on 8/30/18.
//  Copyright © 2018 Chris Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults  = UserDefaults.standard
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "tipIndex")
        calcUpdatedTip()
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    func calcUpdatedTip(){
        
        //load defaults, grab bill from textfield
        let defaults = UserDefaults.standard
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = [0.18, 0.20, 0.25]
        
        
        //set the control from settings
        
        //if no previous settings has been set, set to first one:
        //        if(defaults.integer(forKey: "tipIndex") == nil){
        //            tipControl.selectedSegmentIndex = 0
        //        }
        //        else{
        //            tipControl.selectedSegmentIndex = defaults.integer(forKey: "tipIndex")
        //        }
        
        
        let tipValue = tipPercentage[tipControl.selectedSegmentIndex]
        let tip = bill * tipValue
        
        
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    @IBAction func calculateTip(_ sender: Any) {

        //load defaults, grab bill from textfield
        let defaults = UserDefaults.standard
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = [0.18, 0.20, 0.25]
    

        //set the control from settings
        
        //if no previous settings has been set, set to first one:
//        if(defaults.integer(forKey: "tipIndex") == nil){
//            tipControl.selectedSegmentIndex = 0
//        }
//        else{
//            tipControl.selectedSegmentIndex = defaults.integer(forKey: "tipIndex")
//        }
        
        
        let tipValue = tipPercentage[tipControl.selectedSegmentIndex]
        let tip = bill * tipValue
        
        
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

