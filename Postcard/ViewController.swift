//
//  ViewController.swift
//  Postcard
//
//  Created by Yosemite on 11/9/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Add comments to test github
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        // Update Label properties
        messageLabel.textColor = UIColor.redColor()
        
        // Update Text Field properties
        // - Clear the placeholder text by applying empty string
        enterMessageTextField.text = ""
        // - Close keyboard
        enterMessageTextField.resignFirstResponder()
        
        // Update Button properties
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.greenColor()
        
    }

}

