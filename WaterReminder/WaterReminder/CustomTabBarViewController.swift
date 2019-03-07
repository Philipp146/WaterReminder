//
//  ViewController.swift
//  WaterReminder
//
//  Created by Philipp on 30.12.18.
//  Copyright © 2018 Philipp. All rights reserved.
//

import UIKit
import SnapKit

class CustomTabBarViewController: UIViewController, CustomStylable {
    
    @IBOutlet private weak var tabBarView: UIStackView?
    @IBOutlet private weak var mainButton: UIButton?
    @IBOutlet private weak var detailButton: UIButton?
    @IBOutlet private weak var profileButton: UIButton?
    @IBOutlet private weak var containerView: UIView?
    
    var mainViewController: MainViewController?
    var detailViewController: UIViewController?
    var profileViewController: UIViewController?
    var viewControllers: [UIViewController?]?
    
    private var selectedIndex = 0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViewController()
    }
    
    private func setupViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
        detailViewController = UIViewController()
        profileViewController = UIViewController()
        viewControllers = [mainViewController, detailViewController, profileViewController]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        setupUI()
        setupColors()
    }
    
    private func setupUI() {
        view.backgroundColor = .backgroundColor
        setupTabBarView()
        setupWaterButton()
        setupDetailButton()
        setupProfileButton()
        openMain(mainButton ?? UIButton())
        refreshButtonColors(with: mainButton ?? UIButton())
    }
    
    private func setupTabBarView() {
        tabBarView?.distribution = .fillEqually
        tabBarView?.layoutMargins = UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
        tabBarView?.isLayoutMarginsRelativeArrangement = true
        tabBarView?.addBackground(color: .white)
        tabBarView?.roundCorners(by: 15)
        tabBarView?.layer.zPosition = .greatestFiniteMagnitude
    }
    
    private func setupWaterButton() {
        mainButton?.setImage(AppImages.TabBarImages.mainSelected.image, for: .normal)
        mainButton?.imageView?.contentMode = .scaleAspectFit
    }
    
    private func setupDetailButton() {
        detailButton?.setImage(AppImages.TabBarImages.mainUnselected.image, for: .normal)
        detailButton?.imageView?.contentMode = .scaleAspectFit
    }
    
    private func setupProfileButton() {
        profileButton?.setImage(AppImages.TabBarImages.mainSelected.image, for: .normal)
        profileButton?.imageView?.contentMode = .scaleAspectFit
    }
    
    @IBAction private func openMain(_ sender: UIButton) {
        openScreen(with: sender)
        refreshButtonColors(with: sender)
    }
    
    private func openScreen(with sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        let previousVC = viewControllers?[previousIndex]
        removeOld(previousVC)
        addNewVC(with: sender.tag)
    }
    
    private func removeOld(_ vc: UIViewController?) {
        vc?.willMove(toParent: nil)
        vc?.view.removeFromSuperview()
        vc?.removeFromParent()
    }
    
    private func addNewVC(with tag: Int) {
        guard let vc = viewControllers?[tag] else {
            return
        }
        addChild(vc)
        vc.view.frame = containerView?.bounds ?? .zero
        containerView?.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    private func refreshButtonColors(with sender: UIButton) {
        mainButton?.tintColor = .lightGray
        detailButton?.tintColor = .lightGray
        profileButton?.tintColor = .lightGray
        sender.tintColor = .mainColor
    }
}

enum AppViewController {
    case main
    case detail
    case profile
}

