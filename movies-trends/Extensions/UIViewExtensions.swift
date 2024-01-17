//
//  UIViewExtension.swift
//  movies-trends
//
//  Created by Andrés Rechimon on 17/01/2024.
//

import Foundation

import UIKit

extension UIView {
    func round( _ radious: CGFloat = 10) {
        self.layer.cornerRadius = radious
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
