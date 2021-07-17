//
//  BaseView.swift
//  Component
//
//  Created by 김종권 on 2021/07/17.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("required init?(coder: NSCoder) has not been implemented")
    }

    func configure() {}
    func bind() {}
}
