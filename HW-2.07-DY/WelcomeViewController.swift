//
//  WelcomeViewController.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String? = nil
    
    @IBOutlet private var labelWelcome: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        labelWelcome.text = "Welcome, \(userName ?? "User")"

    }

}
