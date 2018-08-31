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


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {

        let defaults = UserDefaults.standard
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = [0.18, 0.20, 0.25]
        
        
        //let tip = bill * tipArray[tipControl.selectedSegmentIndex]
        var tipValue = defaults.double(forKey: "tipValue")
        if tipValue == {
            tipValue = tipPercentage[tipControl.selectedSegmentIndex]
        }
    
        tipControl.selectedSegmentIndex = tipPercentage.index(of: tipValue) ?? 0
        let tip = bill * tipValue
        
        
        
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

