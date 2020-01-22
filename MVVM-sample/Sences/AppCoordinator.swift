//
//  AppCoordinator.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/17.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    let window: UIWindow?
    
    lazy var rootViewController: UINavigationController = {
//        let storyboard = UIStoryboard(name: "ViewController", bundle: nil)
//        guard let controller = storyboard.instantiateInitialViewController() as? ViewController else {
//            print("Can not create view controller")
//            return UINavigationController(rootViewController: UIViewController())
//        }
        return UINavigationController(rootViewController: UIViewController())
    }()

    // Todo: Config api client here
    //let appClient:
    
    //MARK: Coordinator
    
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    override func start() {
        guard let window = window else { return }
        window.backgroundColor = .red
        window.makeKeyAndVisible()
        window.rootViewController = rootViewController
    }
    
    override func finish() {
        // Todo: Add code here
    }
}
