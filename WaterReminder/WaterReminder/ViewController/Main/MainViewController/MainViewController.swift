//
//  MainViewController.swift
//  WaterReminder
//
//  Created by Philipp on 04.03.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, CustomStylable {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var waterItemsCollectionView: UICollectionView!
    
    private var collectionViewDelegate: MainViewControllerCollectionViewDelegate?
    private var collectionViewDataSource: MainViewControllerCollectionViewDataSource?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupStatisticsView()
    }
    
    private func setup() {
        setupUI()
        setupCollectionView()
    }
    
    private func setupUI() {
        setupColors()
        titleLabel.text = "Drink up!"
        titleLabel.font = .regular(with: .huge)
    }

    
    private func setupCollectionView() {
        waterItemsCollectionView.backgroundColor = .clear
        waterItemsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        waterItemsCollectionView.register(UINib(nibName: "LiquidItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: Identifiers.Cells.waterItemCell)
        waterItemsCollectionView.register(UINib(nibName: "StatisticCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: Identifiers.Cells.statisticCell)
        collectionViewDelegate = MainViewControllerCollectionViewDelegate()
        collectionViewDataSource = MainViewControllerCollectionViewDataSource()
        waterItemsCollectionView.delegate = collectionViewDelegate!
        waterItemsCollectionView.dataSource = collectionViewDataSource!
    }
    
    private func setupStatisticsView() {
        guard let cell = waterItemsCollectionView.cellForItem(at: IndexPath(row: 0, section: 0)) as? StatisticCollectionViewCell else {
            return
        }
        cell.percentages = [30,70]
    }
}
