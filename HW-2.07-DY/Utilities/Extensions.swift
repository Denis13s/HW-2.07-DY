//
//  Extensions.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import Foundation
import UIKit


// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [
            UIColor(
                red: 210/255,
                green: 109/255,
                blue: 128/255,
                alpha: 1
            ).cgColor,
            UIColor(
                red: 107/255,
                green: 148/255,
                blue: 230/255,
                alpha: 1
            ).cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
