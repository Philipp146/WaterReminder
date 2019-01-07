//
//  ViewController.swift
//  WaterReminder
//
//  Created by Philipp on 30.12.18.
//  Copyright © 2018 Philipp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var testButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setup() {
        title = "Main"
        setupUI()
    }
    
    private func setupUI() {
        setupTestButton()
    }
    
    private func setupTestButton() {
        testButton = UIButton(frame: .zero)
        testButton?.setTitle("Servus", for: .normal)
        testButton?.backgroundColor = .cyan
        testButton?.layer.cornerRadius = 5
        setupTestButtonConstraints()
        testButton?.addTarget(self, action: #selector(toggleButtonText), for: .touchUpInside)
    }
    
    private func setupTestButtonConstraints() {
        guard let testButton = testButton else {
            return
        }
        testButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testButton)
        testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc private func toggleButtonText() {
        testButton?.titleLabel?.text == "Servus" ? testButton?.setTitle("Ah moin du alter Schufft", for: .normal) : testButton?.setTitle("Servus", for: .normal)
    }


}

