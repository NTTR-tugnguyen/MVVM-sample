//
//  APIClientService.swift
//  MVVM-sample
//
//  Created by グェントゥン on 2020/01/21.
//  Copyright © 2020 グェントゥン. All rights reserved.
//

import Foundation

class APIClientService {
    private static let shared = APIClientService()
    
    private init() {}
    
    func fetchData(url: String, parameter: [String: String]...) {
        //todo: Fetch data and handle error here
        // Alamofire.get(url.....)
    }
}
