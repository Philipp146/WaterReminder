//
//  MainViewControllerCollectionViewDataSource.swift
//  WaterReminder
//
//  Created by Philipp Privat on 30.04.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class MainViewControllerCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.Cells.statisticCell, for: indexPath) as? StatisticCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.Cells.waterItemCell, for: indexPath) as? LiquidItemCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.name.text = "Water"
            return cell
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
}
