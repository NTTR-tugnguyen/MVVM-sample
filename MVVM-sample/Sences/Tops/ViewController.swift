//
//  ViewController.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/17.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet private weak var loadDataButton: UIButton!
    @IBOutlet private weak var transactionDetailScreenButton: UIButton!
    @IBOutlet private weak var responseLabel: UILabel!
    
    private let disposeBag = DisposeBag()
    var viewModel: TopControllerViewModel! {
        didSet {
            viewModel.viewDelegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // デモのため、ここで書いていますが、実際にはここで書かないで
        viewModel = TopControllerViewModel(model: TopModel(service: APIClientService()))
        
    }
    
    private func setUpView() {
        loadDataButton.addTarget(self, action: #selector(loadData), for: .touchUpInside)
    }
    
    
    @objc private func loadData() {
        viewModel.getTopData(page: 1)
    }
}

extension ViewController: TopControllerViewModelViewDelegate {
    func updateIsLoaddingView(response: String) {
        self.responseLabel.text = response
    }
}
