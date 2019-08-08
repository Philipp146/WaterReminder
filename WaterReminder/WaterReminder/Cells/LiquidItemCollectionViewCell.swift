//
//  LiquidItemCollectionViewCell.swift
//  WaterReminder
//
//  Created by Philipp Privat on 18.07.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class LiquidItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bottomBackground: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 4
        self.contentView.clipsToBounds = true
        name.font = UIFont.regular(with: .tiny)
        bottomBackground.backgroundColor = .white
        backgroundImage.image = UIImage(named: "GlassSelected")
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

}
