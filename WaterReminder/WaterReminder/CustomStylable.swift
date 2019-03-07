//
//  CustomStylable.swift
//  WaterReminder
//
//  Created by Philipp on 07.03.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

protocol CustomStylable {
}

extension CustomStylable where Self:UIViewController {
    
    func setupColors() {
        self.view.backgroundColor = .backgroundColor
        self.view.tintColor = UIViewController().view.tintColor
    }
}
