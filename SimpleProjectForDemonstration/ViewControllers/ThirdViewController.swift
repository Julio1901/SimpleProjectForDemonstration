//
//  ThirdViewController.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 23/12/24.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        title = "Third Screen"
        
        let switchButton = UIButton(type: .system)
        switchButton.setTitle("Switch to New Navigation", for: .normal)
        switchButton.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        switchButton.addTarget(self, action: #selector(switchToNewNavigation), for: .touchUpInside)
        
        view.addSubview(switchButton)
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
    
    @objc func switchToNewNavigation() {

        let fourthViewController = FourthViewController()
        let fifthViewController = FifthViewController()
        let sixthViewController = SixthViewController()

        let secondNavigationController = UINavigationController(rootViewController: fourthViewController)
        secondNavigationController.pushViewController(fifthViewController, animated: false)
        secondNavigationController.pushViewController(sixthViewController, animated: false)

        print("Second NavigationController configurado com sucesso!")


        if let window = UIApplication.shared.windows.first {
//            secondNavigationController.popToRootViewController(animated: false)
            window.rootViewController = secondNavigationController
            window.makeKeyAndVisible()
        }
    }
}
