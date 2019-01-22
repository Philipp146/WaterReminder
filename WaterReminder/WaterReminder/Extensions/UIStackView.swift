//
//  UIStackView.swift
//  WaterReminder
//
//  Created by Philipp on 22.01.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

extension UIStackView {
    
    func addBackground(color: UIColor) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subview, at: 0)
    }
    
    func roundCorners(by radius: CGFloat) {
        self.subviews.first?.layer.cornerRadius = radius
    }
}
