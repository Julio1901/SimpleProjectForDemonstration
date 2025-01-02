//
//  OnboardingPageViewController.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 30/12/24.
//

import UIKit

class OnboardingPageViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    init(text: String, backgroundColor: UIColor) {
        super.init(nibName: nil, bundle: nil)
        self.label.text = text
        self.view.backgroundColor = backgroundColor
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
