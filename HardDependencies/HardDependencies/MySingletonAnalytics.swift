//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import Foundation

class MySingletonAnalytics {
    static private let instance = MySingletonAnalytics()
    
#if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
#endif
    
    static var shared: MySingletonAnalytics {
#if DEBUG
    if let stubbedInstance = stubbedInstance {
            return stubbedInstance
    }
#endif
        return instance
    }
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.instance {
            print(">> ...Not MySingletonAnalytics singleton")
        }
        
    }
}
