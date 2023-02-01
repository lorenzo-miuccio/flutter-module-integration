//
//  Config.swift
//  MyiOSApplication
//
//  Created by Lorenzo Miuccio on 01/02/23.
//

enum Environment: String { // 1
    case prod = "Debug-prod"
    case dev = "Debug-dev"
}

class BuildConfiguration { // 2
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Environment") as! String
        
        environment = Environment(rawValue: currentConfiguration)!
    }
}
