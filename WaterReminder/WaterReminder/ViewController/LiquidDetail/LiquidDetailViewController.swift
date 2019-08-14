//
//  LiquidDetailViewController.swift
//  WaterReminder
//
//  Created by Philipp Privat on 12.08.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import Foundation
import UIKit

class LiquidDetailViewController: UIViewController {
    
    @IBOutlet weak var liquidName: UILabel!
    
    var viewModel: LiquidDetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        liquidName.text = viewModel?.liquidName
    }
}

struct LiquidDetailViewModel {
    var liquidName: String
}
