//
//  SceneDelegate.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 22/12/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    let tabViewControllerTwo = TabViewControllerTwo()
    let tabViewControllerThree = TabViewControllerThree()
    let tabViewControllerFour = TabViewControllerFour()
    let tabViewControllerFive = TabViewControllerFive()
    let tabViewControllerSix = TabViewControllerSix()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }

        let tabBarController = UITabBarController()

        
        let firstNav = UINavigationController(rootViewController: SixthViewController())
        firstNav.pushViewController(FifthViewController(), animated: true)
        firstNav.pushViewController(SecondViewController(), animated: true)
        firstNav.pushViewController(ThirdViewController(), animated: true)
        firstNav.pushViewController(FourthViewController(), animated: true)
        firstNav.pushViewController(FifthViewController(), animated: true)
        firstNav.pushViewController(SixthViewController(), animated: true)
        firstNav.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
//        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        tabViewControllerTwo.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        tabViewControllerThree.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabViewControllerFour.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        tabViewControllerFive.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 4)
        tabViewControllerSix.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 5)
        
        
        
        
        
        
        
        tabBarController.viewControllers = [firstNav, tabViewControllerTwo, tabViewControllerThree, tabViewControllerFour, tabViewControllerFive, tabViewControllerSix]
        
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

