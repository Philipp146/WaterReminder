//
//  UIFont.swift
//  WaterReminder
//
//  Created by Philipp Privat on 30.04.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

extension UIFont {
    
    static func regular(with size: FontSize) -> UIFont {
        return UIFont(name: Identifiers.Fonts.grandHotelRegular, size: size.rawValue)!
    }
}

enum FontSize: CGFloat {
    case huge = 40
    case big = 32
    case normal = 24
    case small = 20
    case tiny = 16
}
