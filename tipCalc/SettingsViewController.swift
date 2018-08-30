//
//  SettingsViewController.swift
//  tipCalc
//
//  Created by Chris Martinez on 8/30/18.
//  Copyright © 2018 Chris Martinez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func makeDefaultTip(_ sender: Any) {
        
        let tipValue = defaultTipControl.selectedSegmentIndex
        let defaults = UserDefaults.standard
        defaults.set(tipValue, forKey: "tipValue")
        defaults.synchronize()
        
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
