//
//  ViewController.swift
//  Component
//
//  Created by 김종권 on 2021/07/17.
//

import UIKit

class ViewController: UIViewController {

    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "The sample label below gradientView"
        label.textColor = .black

        return label
    }()

    lazy var gradientView: GradientView = {
        let view = GradientView()
        view.colors = [UIColor.white.withAlphaComponent(0.01), .white]

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    private func configure() {

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(gradientView)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.topAnchor.constraint(equalTo: label.topAnchor).isActive = true
        gradientView.leadingAnchor.constraint(equalTo: label.leadingAnchor).isActive = true
        gradientView.bottomAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        gradientView.rightAnchor.constraint(equalTo: label.rightAnchor).isActive = true
    }

    @objc
    private func didTapButton() {
        print("did tap button")
    }
}
