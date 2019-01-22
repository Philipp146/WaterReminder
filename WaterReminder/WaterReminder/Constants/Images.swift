//
//  Images.swift
//  WaterReminder
//
//  Created by Philipp on 07.01.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

enum AppImages {
    
    enum TabBarImages: String {
        case mainSelected = "GlassTabBarItem"
        case mainUnselected = "GlassTabBarItemUnselected"
        
        var image: UIImage? {
            return UIImage(named: rawValue)
        }
    }
    
}
