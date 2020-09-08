//
//  ViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func doNextAct(_ sender: Any) {
        
        if nameTextField.text!.isEmpty {
                let alert = UIAlertController(title: "Error", message: "You can't keep empty this field.", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
            
        } else {
            DataManager.shared.name = nameTextField.text!
            guard let ques1V = self.storyboard?.instantiateViewController(identifier: "Ques1ViewController") as? Ques1ViewController else { return  }
            self.navigationController?.pushViewController(ques1V, animated: true)
            
        }
    }
    
}

