//
//  ViewController.swift
//  WaterReminder
//
//  Created by Philipp on 30.12.18.
//  Copyright © 2018 Philipp. All rights reserved.
//

import UIKit
import SnapKit

final class MasterViewController: UIViewController {
    
    var tabBarView: UIStackView?
    var waterButton: UIImageView?
    var detailButton: UIImageView?
    var profileButton: UIImageView?
    
    let margin = 8

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
        view.backgroundColor = .backgroundColor
        setupTabBarView()
        setupWaterButton()
        setupDetailButton()
        setupProfileButton()
    }
    
    private func setupTabBarView() {
        tabBarView = UIStackView()
        guard let tabBarView = tabBarView else {
            return
        }
        view.addSubview(tabBarView)
        tabBarView.snp.makeConstraints({ (make) in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-margin)
            make.left.equalTo(view).offset(margin)
            make.right.equalTo(view).offset(-margin)
            make.height.equalTo(80)
        })
        tabBarView.distribution = .fillEqually
        tabBarView.layoutMargins = UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
        tabBarView.isLayoutMarginsRelativeArrangement = true
        tabBarView.addBackground(color: .white)
        tabBarView.roundCorners(by: 15)
    }
    
    private func setupWaterButton() {
        waterButton = UIImageView()
        guard let waterButton = waterButton else {
            return
        }
        tabBarView?.addArrangedSubview(waterButton)
        waterButton.image = AppImages.TabBarImages.mainSelected.image
        waterButton.contentMode = .scaleAspectFit
    }
    
    @objc private func openMainScreen() {
        print("openMain")
    }
    
    private func setupDetailButton() {
        detailButton = UIImageView()
        guard let detailButton = detailButton else {
            return
        }
        tabBarView?.addArrangedSubview(detailButton)
        detailButton.image = AppImages.TabBarImages.mainUnselected.image
        detailButton.contentMode = .scaleAspectFit
        
    }
    
    private func setupProfileButton() {
        profileButton = UIImageView()
        guard let profileButton = profileButton else {
            return
        }
        tabBarView?.addArrangedSubview(profileButton)
        profileButton.image = AppImages.TabBarImages.mainSelected.image
        profileButton.contentMode = .scaleAspectFit
    }
}

enum AppViewController {
    case main
    case detail
    case profile
}

