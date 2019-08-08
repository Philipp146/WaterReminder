//
//  ViewController.swift
//  WaterReminder
//
//  Created by Philipp Privat on 30.04.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

struct ViewController {
    
    static var main: MainViewController {
        return MainViewController(nibName: Identifiers.ViewController.main, bundle: nil)
    }
}
