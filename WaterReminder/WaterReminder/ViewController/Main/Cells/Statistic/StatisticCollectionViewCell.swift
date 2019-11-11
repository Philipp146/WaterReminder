//
//  StatisticCollectionViewCell.swift
//  WaterReminder
//
//  Created by Philipp Privat on 13.08.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class StatisticCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var todaysStatisticView: StatisticView!
    @IBOutlet weak var weeklyStatisticView: StatisticView!
    var percentages: [Double]! {
        didSet {
            setupStatisticViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func setup() {
        setupUI()
        setupRecognizer()
    }
    
    private func setupUI() {
        contentView.backgroundColor = .clear
        todaysStatisticView.backgroundColor = .clear
        weeklyStatisticView.backgroundColor = .clear
    }
    
    private func setupStatisticViews() {
        todaysStatisticView.percentage = percentages[0]
        weeklyStatisticView.percentage = percentages[1]
    }
    
    private func setupRecognizer() {
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateViews)))
    }
    
    @objc private func animateViews() {
        todaysStatisticView.animate()
        weeklyStatisticView.animate()
    }
    
    

}
