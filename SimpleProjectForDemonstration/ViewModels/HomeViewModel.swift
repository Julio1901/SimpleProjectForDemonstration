//
//  HomeViewModel.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 22/12/24.
//

import Foundation

class HomeViewModel {
    
    var onMainButtonTapped: (() -> Void)?
    
    
    
    func randomFunction() {
        guard let onMainButtonTapped else { return }
        onMainButtonTapped()
    }
    
}
