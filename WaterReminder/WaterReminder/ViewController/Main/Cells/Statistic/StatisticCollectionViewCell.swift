//
//  StatisticCollectionViewCell.swift
//  WaterReminder
//
//  Created by Philipp Privat on 13.08.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class StatisticCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var todaysStatisticView: UIView!
    @IBOutlet weak var weeklyStatisticView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func setup() {
        setupUI()
    }
    
    private func setupUI() {
        contentView.backgroundColor = .clear
        todaysStatisticView.backgroundColor = .clear
        weeklyStatisticView.backgroundColor = .clear
        todaysPercentage.font = UIFont.regular(with: .normal)
        
        weeklyPercentage.font = UIFont.regular(with: .normal)
    }
    
    

}
