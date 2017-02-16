//
//  ViewController.swift
//  tipped
//
//  Created by Sarah Li on 1/3/17.
//  Copyright © 2017 Sarah Li. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipView: UIView!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPlus: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalBg: UIView!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var splitResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        billField.center.y += 490
        tipView.center.y += view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEdit(_ sender: Any) {
        UIView.animate(withDuration: 0.8, animations: {
            self.billField.center.y = 88
            self.tipView.center.y = 400
        })
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let splitNumber = Double(splitField.text!) ?? 0
        let splitTotal = total / splitNumber
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitResultLabel.text = String(format: "$%.2f", splitTotal)
    }
    
}
