//
//  Coordinators.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/17.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import Foundation

class Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    func start() {
        print("Start coordinator")
    }
    
    func finish() {
        print("Finish coordinator")
    }
    
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    
    func removeCoordinator(_ coordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(of: coordinator) {
            childCoordinators.remove(at: index)
        } else {
            print("Can not remove coordinator!!!")
        }
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) {
        childCoordinators = childCoordinators.filter { $0 is T  == false }
    }

    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }
}


extension Coordinator: Equatable {
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
}
