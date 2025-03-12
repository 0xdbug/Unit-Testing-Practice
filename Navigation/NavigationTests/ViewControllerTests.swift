//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by dbug on 3/12/25.
//

import XCTest
@testable import Navigation

final class ViewControllerTests: XCTestCase {
    // still more to test

    func test_tappingCodePushButton_shouldPushCodeNextViewController() {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let sut: ViewController = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
        
        let navigation = UINavigationController(rootViewController: sut)
        
        tap(sut.codePushButton)
        
        executeRunLoop()
        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation stack")
    }
    
}
