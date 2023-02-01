//
//  Config.swift
//  MyiOSApplication
//
//  Created by Lorenzo Miuccio on 01/02/23.
//

import Foundation

enum Environment: String { // 1
    case prod = "prod"
    case dev = "dev"
}

class BuildConfiguration { // 2
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Env") as! String
        environment = Environment(rawValue: currentConfiguration)!
    }
}
