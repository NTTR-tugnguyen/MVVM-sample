//
//  TopControllerViewModel.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/17.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

// MARK: ViewModel type protocol
protocol TopControllerViewModelType {
    var viewDelegate: TopControllerViewModelViewDelegate? { get set }
    
    // Data Source
    var shouldShowHeader: Bool { get }
    var headerText: String { get }
    func numberOfItems() -> Int
    
    // Event
    func start()
    func searchFor(text: String)
    func didSelectRow(_ row: Int, from controller: UIViewController)
}

// MARK: Coordinator Delegate
protocol TopControllerViewModelCoordinatorDelegate: class {
    // Navigation to detail view controller
    func navigation()
}


// MARK: View Delegate
protocol TopControllerViewModelViewDelegate: class {
    //var updateDataPublishObservable: Observable<AnyObject> { get }
    //var isLoaddingObservable: Observable<Bool> { get }
    
    func updateIsLoaddingView(response: String)
}



class TopControllerViewModel {
    // View delegate
    weak var viewDelegate: TopControllerViewModelViewDelegate?
    // ViewDelegate property 
    var updateDataSubject = PublishSubject<AnyObject>()
    var isLoaddingSubject = PublishSubject<Bool>()
    
    // Coordinator delegate
    weak var coordinatorDelegate: TopControllerViewModelCoordinatorDelegate?
    // Service
    fileprivate let topModel: TopModel
    
    var shouldShowHeader = false
    var headerText = ""
    
    init(model: TopModel) {
        self.topModel = model
    }
    
    
    func start() {
        
    }
    
    func getTopData(page: Int) {
        let response = topModel.getTopData(parameter: "parameter")
        viewDelegate?.updateIsLoaddingView(response: response)
    }
    
    func numberOfItems() -> Int {
        // Todo: Do something here
        return 10
    }
    
    
    func searchFor(text: String) {
        // Search something
    }
    
    func didSelectRow(_ row: Int, from controller: UIViewController) {
        // Tableview's row is selected
    }
    
}
