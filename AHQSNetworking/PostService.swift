//
//  PostService.swift
//  AHQSNetworking
//
//  Created by DA SILVA Andre Henrique on 29/08/2017.
//  Copyright © 2017 a h e n q s. All rights reserved.
//

import Foundation

public protocol PostService: Postable {
    
    var endPoint: String { get }
    var downloader: JSONDownloader { get }
    
    associatedtype postCompletionHandler
    
    func postRequest(url: URL, data: [String: Any]) -> URLRequest
}

public extension PostService {
    
    func postRequest(url: URL, data: [String: Any]) -> URLRequest {
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
            
            request.httpBody = jsonData
            
        } catch {
            print(error.localizedDescription)
        }
        
        return request
    }
}
