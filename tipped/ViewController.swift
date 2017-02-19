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
    @IBOutlet weak var totalBg: UIView!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var splitResultLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var totalField: UITextField!
    
    var split = 1
    var billTotal = Double(0)
    
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
    
    @IBAction func onEdit(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.8, animations: {
            self.billField.center.y = 88
            self.tipView.center.y = 400
        })
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    func calculateSplit() {
        if split > 1 {
            let splitNumber = Double(split)
            let splitTotal = billTotal / splitNumber
            splitResultLabel.alpha = 1
            splitResultLabel.text = String(format: "$%.2f", splitTotal)
            minusButton.isEnabled = true
        } else {
            splitResultLabel.alpha = 0
            minusButton.isEnabled = false
        }
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        // Calculate Tip
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        billTotal = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalField.text = String(format: "$%.2f", billTotal)
        
        // Calculate Split
        
        calculateSplit()
        
    }
    
    @IBAction func plusSplit(_ sender: AnyObject) {
        split += 1
        splitField.text = String(format: "%d", split)
        calculateSplit()
    }
    
    @IBAction func minusSplit(_ sender: AnyObject) {
        split -= 1
        splitField.text = String(format: "%d", split)
        calculateSplit()
    }
    
}
