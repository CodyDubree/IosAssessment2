//
//  ViewController.swift
//  Assessment2
//
//  Created by Cody Dubree on 10/29/18.
//  Copyright © 2018 Cody Dubree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextfield: UITextField!
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var lastNametextfield: UITextField!
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let firstName = firstNameTextfield.text, !firstName.isEmpty,
            let lastName = lastNametextfield.text, !lastName.isEmpty,
            let email = emailTextfield.text, !email.isEmpty
            
            else {
                let errorAlert = UIAlertController(title: "Error", message: "Please fill all fields ", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) {UIAlertAction in}
                errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        let personAlert = UIAlertController(title: "Hello", message: "welcome \(firstName), \(lastName) email \(email) ", preferredStyle: .alert)
        self.present(personAlert, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
}
