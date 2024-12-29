//
//  TabViewControllerSix.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 29/12/24.
//

import UIKit

class TabViewControllerSix: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed

        let label = UILabel()
        label.text = "Tab ViewController 6"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
