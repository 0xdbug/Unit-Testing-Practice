//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by dbug on 3/10/25.
//

import XCTest
@testable import HardDependencies

final class InstancePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))

        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
