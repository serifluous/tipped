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
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var totalField: UITextField!
    
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
    
    func disableMinus(x: Int) {
        if x < 2 {
            minusButton.isEnabled = false
        } else {
            minusButton.isEnabled = true
        }
    }
    
//    func calculateSplit() {
//        let splitNumber = Double(splitField.text!) ?? 0
//        let total = Double(totalLabel.text!) ?? 0
//        let splitTotal = total / splitNumber
//        splitResultLabel.text = String(format: "$%.2f", splitTotal)
//        print(String(format: "$%.2f", total))
//    }
    
    @IBAction func calculateSplit(_ sender: AnyObject) {
        let splitNumber = Double(splitField.text!) ?? 0
        print(splitNumber)
        let total = Double(totalField.text!) ?? 0
        print(total)
        let splitTotal = total / splitNumber
        splitResultLabel.text = String(format: "$%.2f", splitTotal)
    }
    
    @IBAction func plusSplit(_ sender: AnyObject) {
        let splitNumber = (Int(splitField.text!) ?? 0) + 1
        splitField.text = String(format: "%d", splitNumber)
        disableMinus(x: splitNumber)
//        print(totalLabel.text ?? 0)
//        print(splitField.text ?? 0)
    }
    
    @IBAction func minusSplit(_ sender: AnyObject) {
        let splitNumber = (Int(splitField.text!) ?? 0) - 1
        splitField.text = String(format: "%d", splitNumber)
        disableMinus(x: splitNumber)
//        print(totalLabel.text ?? 0)
//        print(splitField.text ?? 0)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        // Calculate Tip
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalField.text = String(format: "$%.2f", total)
        
        // Calculate Split
//        
//        let splitNumber = Double(splitField.text!) ?? 0
//        let splitTotal = total / splitNumber
//        splitResultLabel.text = String(format: "$%.2f", splitTotal)

    }
    
}
