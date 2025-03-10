//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies

final class ClosurePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        
        sut.loadViewIfNeeded()
        
        sut.makeAnalytics = { Analytics() }
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
        
    }
    
}
