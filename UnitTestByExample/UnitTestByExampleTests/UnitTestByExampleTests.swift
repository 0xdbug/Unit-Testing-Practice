//
//  UnitTestByExampleTests.swift
//  UnitTestByExampleTests
//
//  Created by dbug on 3/7/25.
//

import XCTest
@testable import UnitTestByExample

struct SimpleStruct: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String { "(\(x), \(y))" }
}

final class UnitTestByExampleTests: XCTestCase { /// test suite (collection of tests) this is the suite level
    
    func test_fail() { /// this is the test level
                       //        XCTFail()
                       ///         my boy XCTFail takes a string paramter
                       ///         which is a mesage it shows when failed
                       ///         this is called `Assertion Message`
                       //        XCTFail("Bad code")
                       ///         `CMD+5` shows the failed tests and their message
                       ///         called `Issue Navigator`
                       ///
                       ///         we also have other kinds of assertions
                       ///         `XCTAssertTrue` `XCTAssertFalse`
                       //        let success = true
                       //        XCTAssertTrue(success)
        
        ///     Tests can describe an Object
        ///     see test_assertNil
    }
    
    
    func test_assertNil() {
//        let optional: Int? = 123
        //        XCTAssertNil(optional)
    }
    
    func test_assertNil_withSimpleStruct() {
//        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        
//        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual() {
//        let assert = "actual"
        /// order does not matter
//        XCTAssertEqual(assert, "Expected")
        
//        let optional: String? = "actual"
        /// 'expected' will be an converted
        /// must be the same type
//        XCTAssertEqual(optional, "expected")
        
    }
    
    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        /// result is 0.300004
        /// we have accuracy paramter
        XCTAssertEqual(result, 0.3, accuracy: 0.001)
    }
    
    /// those are all the XCT test methods i thing
    /// we can use XCTAssertTrue for all BUT
    /// we want a clear message
    /// so, right method for right place plz
    
    
    
    
}
