//
//  Analytics.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
    
}
