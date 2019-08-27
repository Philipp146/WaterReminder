//
//  StatisticView.swift
//  WaterReminder
//
//  Created by Philipp Privat on 13.08.19.
//  Copyright © 2019 Philipp. All rights reserved.
//

import Foundation
import UIKit

class StatisticView: UIView {
    
    var percentage: Double! {
        didSet {
            setupViews()
        }
    }
    private var percentageLabel: UILabel = {
        return UILabel()
    }()
    private var backgroundCircle: UIBezierPath = {
        return UIBezierPath()
    }()
    private var percentageCircle: UIBezierPath = {
        return UIBezierPath()
    }()
    
    private let lineWidth: CGFloat = 10
    
    private func setupViews() {
        setupLabel()
        setupBackgroundCircle()
        setupPercentageCircle()
    }
    
    private func setupLabel() {
        percentageLabel.text = "\(percentage ?? 0) %"
        percentageLabel.font = UIFont.regular(with: .normal)
        addSubview(percentageLabel)
        percentageLabel.translatesAutoresizingMaskIntoConstraints = false
        percentageLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        percentageLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    private func setupBackgroundCircle() {
        let shape = CAShapeLayer()
        let radius = bounds.width/2 - lineWidth/2
        backgroundCircle = UIBezierPath(arcCenter: getCenter(), radius: radius, startAngle: 0, endAngle: CGFloat(2*Double.pi), clockwise: true)
        shape.path = backgroundCircle.cgPath
        shape.strokeColor = UIColor.lightGray.withAlphaComponent(0.3).cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.lineWidth = lineWidth
        layer.addSublayer(shape)
    }
    
    private func setupPercentageCircle() {
        let shape = CAShapeLayer()
        let startAngle = -CGFloat.pi / 2
        let radius = bounds.width/2 - lineWidth/2
        let circlePercentage = CGFloat((2*Double.pi) * (percentage / 100)) + startAngle
        percentageCircle = UIBezierPath(arcCenter: getCenter(), radius: radius, startAngle: startAngle, endAngle: circlePercentage, clockwise: true)
        shape.path = percentageCircle.cgPath
        shape.strokeColor = UIColor.mainColor.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.lineWidth = lineWidth
        shape.lineCap = CAShapeLayerLineCap.round
        layer.addSublayer(shape)
    }
    
    private func getCenter() -> CGPoint {
        return CGPoint(x: self.bounds.width/2, y: self.bounds.height/2)
    }
    
}
