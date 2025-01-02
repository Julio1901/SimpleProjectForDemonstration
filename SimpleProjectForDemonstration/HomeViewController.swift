//
//  ViewController.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 22/12/24.
//

import UIKit

class HomeViewController: UIViewController {

    
    let mainViewModel = MainViewModel()
    

    
    @IBAction func btnAction(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        let productExample = ProductDTO(id: 1, name: "iPhone", price: 2.000)

        var exampleTwo = productExample
        
        exampleTwo.name = "changed"
        
        print(exampleTwo)
        print(productExample)
//        
        
//        
//        let productExampleClass = ProductClassDTO(id: 1, name: "iPhone", price: 2.000)
//        var exampleTwoClass = productExampleClass
//        
//        exampleTwoClass.name = "changed class"
        
//        
//        
//        print(exampleTwoClass.name)
//        print(productExampleClass.name)
        
        
//        
//        mainViewModel.changeProductId(product: productExampleClass, id: 2)
//        print(productExampleClass.id)
        
        
    }


    
}

