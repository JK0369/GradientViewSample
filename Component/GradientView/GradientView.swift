//
//  GradientView.swift
//  Component
//
//  Created by 김종권 on 2021/07/17.
//

import UIKit

class GradientView: BaseView {
    enum GradientDirection {
        case vertical
        case horizontal
    }

    var gradientLayerColors: [UIColor]? {
        didSet { bind() }
    }

    var direction: GradientDirection = .horizontal

    private let gradientLayer = CAGradientLayer()

    convenience init(direction: GradientDirection) {
        self.init(frame: .zero)
        self.direction = direction
    }

    override func configure() {
        super.configure()

        layer.addSublayer(gradientLayer)
        isUserInteractionEnabled = false
    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)

        switch direction {
        case .horizontal:
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        case .vertical:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1.0)
        }

        gradientLayer.frame = bounds
    }

    override func bind() {
        super.bind()

        gradientLayer.colors = gradientLayerColors?.compactMap { $0.cgColor }
    }
}
