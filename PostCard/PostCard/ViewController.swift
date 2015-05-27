//
//  ViewController.swift
//  PostCard
//
//  Created by Udit  on 5/26/15.
//  Copyright (c) 2015 Udit . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!

    @IBOutlet weak var sendPostCardButton: UIButton!

    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostCardButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageTextField.text = ""
        messageTextField.resignFirstResponder()

        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameTextField.text = ""
        nameTextField.resignFirstResponder()

        sendPostCardButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}
