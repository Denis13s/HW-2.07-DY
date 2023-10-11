//
//  BioViewController.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var labelBio: UILabel!
    
    var bio: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        labelBio.text = bio
    }
}
