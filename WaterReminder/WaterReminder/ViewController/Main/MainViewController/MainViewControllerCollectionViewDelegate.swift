//
//  MainViewControllerCollectionViewDelegate.swift
//  WaterReminder
//
//  Created by Philipp Privat on 30.04.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class MainViewControllerCollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let margins: CGFloat = 24
    let numberOfItemsInRow: CGFloat = 3

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: collectionView.bounds.width, height: 150)
        } else {
            let itemWidth = (collectionView.bounds.width / numberOfItemsInRow) - margins
            return CGSize(width: itemWidth, height: itemWidth)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return margins
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? LiquidItemCollectionViewCell else {
            return
        }
        let detailVC = LiquidDetailViewController(nibName: "LiquidDetailViewController", bundle: nil)
        let tabBarVC = collectionView.window?.rootViewController as? CustomTabBarViewController
        guard let _tabBarVC = tabBarVC,
            let mainVC = _tabBarVC.getCurrentViewController(),
            let name = cell.name.text else {
            return
        }
        detailVC.viewModel = LiquidDetailViewModel(liquidName: name)
        mainVC.present(detailVC, animated: true, completion: nil)
    }
}
