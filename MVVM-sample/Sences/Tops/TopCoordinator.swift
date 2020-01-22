//
//  TopCoordinator.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/17.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import UIKit

class TopCoordinator: Coordinator {
    let rootController: UITabBarController
    
    let rootNavViewController: UINavigationController = {
        let navController = UINavigationController()
        //navController.tabBarItem = .top
        return navController
    }()
    
    let storyboard = UIStoryboard(name: "ViewController", bundle: nil)
    //let apiClient = xxx
    
    
    //let topViewModel
    
    // initの時、apiClientを追加
    init(rootViewController: UITabBarController) {
        self.rootController = rootViewController
    }
    
    override func start() {
        guard let topViewController = storyboard.instantiateInitialViewController() as? ViewController else { return }
        rootNavViewController.setViewControllers([topViewController], animated: true)
        rootController.setViewControllers([rootNavViewController], animated: true)
    }
    
    
    override func finish() {
        // Pop navigation controller from stack
    }
}


// MARK: Navigation code implement below
extension TopCoordinator {
    func gotoDetailScreen() {
        // Todo: Navigation to detail screen
        // pass controller here and using controller for navigation
    }
    
    func gotoSettingTab() {
        // Todo: Move go to setting tab
    }
}

// Callback delegate -> I will create after
//extension TopCoordinator: DetailCoordinatorDelegate {
//
//}




