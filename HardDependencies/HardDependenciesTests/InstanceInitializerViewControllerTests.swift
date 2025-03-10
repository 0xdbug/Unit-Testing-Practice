//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies

final class InstanceInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
