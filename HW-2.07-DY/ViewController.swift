//
//  ViewController.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldUserName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.userName = textFieldUserName.text
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if textFieldUserName.text == DataService.shared.userName,
           textFieldPassword.text == DataService.shared.password {
            return true
        } else {
            showAlert(
                title: "Invalid Login or Password",
                message: "Please, enter correct data",
                textField: textFieldPassword
            )
            return false
        }
    }
    
    @IBAction func ButtonForgotPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(
                title: "Input this name",
                message: "\(DataService.shared.userName)"
            )
        case 1:
            showAlert(
                title: "Input this password",
                message: " \(DataService.shared.password)"
            )
        default: return
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        textFieldUserName.text = ""
        textFieldPassword.text = ""
    }
    
    private func showAlert(
        title: String,
        message: String,
        textField: UITextField? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        textField?.text = ""
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

