//
//  UIColor.swift
//  WaterReminder
//
//  Created by Philipp on 07.01.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(redRGB: Int, green: Int, blue: Int, alpha: CGFloat) {
        self.init(red: CGFloat(redRGB)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: alpha)
    }
}
