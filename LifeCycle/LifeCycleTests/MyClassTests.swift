//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by dbug on 3/7/25.
//

import XCTest
@testable import LifeCycle

final class MyClassTests: XCTestCase {
    /// Stuff the test needs before it can run is called
    /// `text fixture`
    
    private var sut: MyClass!
    
    override func setUp() {
        /// every property created here should be destroyed in tearDown
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        sut.methodOne()
    }
    
    func test_methodTwo() {
        sut.methodTwo()
    }
    
}
