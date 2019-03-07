//
//  MainViewController.swift
//  WaterReminder
//
//  Created by Philipp on 04.03.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .backgroundColor
    }

    @IBAction func changeText(_ sender: UIButton) {
        sender.isSelected = false
        sender.setTitle("Servus", for: .normal)
    }
}
