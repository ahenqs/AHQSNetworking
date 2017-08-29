//
//  GetService.swift
//  AHQSNetworking
//
//  Created by DA SILVA Andre Henrique on 29/08/2017.
//  Copyright © 2017 a h e n q s. All rights reserved.
//

import Foundation

public protocol GetService: Gettable {
    
    var endPoint: String { get }
    var downloader: JSONDownloader { get }
    
    associatedtype getCompletionHandler
}
