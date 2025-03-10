//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies

final class OverrideViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
    
}

// fancy new way
private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        Analytics()
    }
}
