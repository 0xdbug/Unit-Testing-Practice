//
//  CodeCoverageTests.swift
//  CodeCoverageTests
//
//  Created by dbug on 3/8/25.
//

import XCTest
@testable import CodeCoverage

final class CodeCoverageTests: XCTestCase {
    
    /// # characterization tests.
    /// These are tests that capture the actual behavior of the code. To write a characterization test, do the following:
    /// 1. Call the code from a test, yielding some kind of result.
    /// 2. Write an assertion comparing the result to a value you know won’t match.
    /// 3. Run the test. The failure message will tell you the actual result.
    /// 4. Adjust the assertion so that it expects the actual result.
    /// 5. Rerun the test to see it pass.
    
    func test_with1and2_shouldReturnSomething() {
        let result = CoveredClass().max(1, 2)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_with1and2_shouldReturn3() {
        let result = CoveredClass().max(3, 2)
        
        XCTAssertEqual(result, 3)
    }
    
    func test_commaSeparated_with1and5_shouldReturnSomething() {
        let result = CoveredClass().commaSeparated(from: 1, to: 5)
        
        XCTAssertEqual(result, "1,2,3,4,5")
    }
    
    func test_commaSeparated_with2and2_shouldReturnSomething() {
        let result = CoveredClass().commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "2")
    }
    
    func test_area_withWidth7_shouldBe49() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, 49)
    }
    
}
