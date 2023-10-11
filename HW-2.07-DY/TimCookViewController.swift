//
//  TimCookViewController.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import UIKit

class TimCookViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var textDescription: UILabel!
    
    private var bio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        getData()
        image.layer.cornerRadius = 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
            bioVC.bio = self.bio
        }
    }
    
    private func getData() {
        let person = DataService.shared.getPersonData()
        image.image = UIImage(named: person.image)
        textDescription.text = "Name: \(person.name)\nSurname: \(person.surname)\nCompany:  \(person.company)\nFunction: \(person.function)"
        bio = person.bio
    }
}
