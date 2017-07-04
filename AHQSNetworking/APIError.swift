//
//  APIError.swift
//  EasyNetworking
//
//  Created by DA SILVA Andre Henrique on 04/04/2017.
//  Copyright © 2017 a h e n q s. All rights reserved.
//

import Foundation

enum APIError: Error {
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case invalidURL
    case jsonParsingFailure
}
