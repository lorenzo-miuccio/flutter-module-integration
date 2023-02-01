//
//  Config.swift
//  MyiOSApplication
//
//  Created by Lorenzo Miuccio on 01/02/23.
//

import Foundation

enum Env: String {
    case prod = "prod"
    case dev = "dev"
}

class BuildConfiguration {
    static let shared = BuildConfiguration()
    
    let environment: Env
    
    private init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Env") as! String
        environment = Env(rawValue: currentConfiguration)!
    }
}
