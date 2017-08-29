//
//  Postable.swift
//  AHQSNetworking
//
//  Created by DA SILVA Andre Henrique on 28/08/2017.
//  Copyright © 2017 a h e n q s. All rights reserved.
//

import Foundation

public protocol Postable {
    associatedtype T
    func post(data: [String: Any], completion: @escaping (Result<T>) -> Void)
}
