//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllers
//
//  Created by dbug on 3/9/25.
//

import XCTest
@testable import LoadViewControllers

final class StoryboardBasedViewControllerTests: XCTestCase {
    
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }
    
}
