//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies


final class ClosureInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }

}
