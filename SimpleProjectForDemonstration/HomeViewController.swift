//
//  ViewController.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 22/12/24.
//

import UIKit

class HomeViewController: UIViewController {

    
    var homeViewModel = HomeViewModel()
    
    @IBAction func btnAction(_ sender: Any) {
        homeViewModel.randomFunction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindingViewController()
    }



    
    func bindingViewController() {
        homeViewModel.onMainButtonTapped = { [weak self] in
            self?.view.backgroundColor = .blue
        }
    }
    
}

