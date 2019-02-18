//
//  ViewController.swift
//  FoodTracker_KL
//
//  Created by Kyle Lemons on 2/15/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = nameTextField.text
    }


    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

