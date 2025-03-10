//
//  MySingletonViewControllerTests.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies

class MySingletonViewControllerTests: XCTestCase {
    // this is an anti-pattern way to substitute dependencies
    // not recommened but its easy and good to know for legacy codebases
    // or so i think
    
    override func setUp() {
        super.setUp()
        /// replacing the singleton with a new instance
        /// the type but its a new instance so it prints the string we added
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
    
}
