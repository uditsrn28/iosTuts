//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Udit  on 5/30/15.
//  Copyright (c) 2015 Udit . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usShoeSizeTextField: UITextField!
    @IBOutlet weak var convertedSizeLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
        usShoeSizeTextField.resignFirstResponder()
        var integerFromTextField = usShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        convertedSizeLabel.hidden = false
        convertedSizeLabel.text = "\(integerFromTextField+conversionConstant)"
        
    }

    @IBAction func clearTextButtonPressed(sender: AnyObject) {
        convertedSizeLabel.text = ""
        usShoeSizeTextField.text = " "
    }
}

