//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllers
//
//  Created by dbug on 3/9/25.
//

import XCTest
@testable import LoadViewControllers

final class XIBBasedViewControllerTests: XCTestCase {
    
    func test_load() {
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }
    
}
