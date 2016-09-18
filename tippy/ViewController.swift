//
//  ViewController.swift
//  tippy
//
//  Created by Adam Noffsinger on 9/18/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func getSegment(_ sender: AnyObject) {
        let selectedSegment = tipControl.selectedSegmentIndex
        
        if selectedSegment == 0 {
            self.view.backgroundColor = UIColor.init(red: 110/255, green: 175/255, blue: 136/255, alpha: 1)
        } else if selectedSegment == 1 {
            self.view.backgroundColor = UIColor.init(red: 66/255, green: 152/255, blue: 100/255, alpha: 1)
        } else if selectedSegment == 2 {
            self.view.backgroundColor = UIColor.init(red: 22/255, green: 130/255, blue: 64/255, alpha: 1)
        }
        

    }
}

