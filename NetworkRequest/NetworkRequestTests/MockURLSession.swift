//
//  MockURLSession.swift
//  NetworkRequestTests
//
//  Created by dbug on 3/13/25.
//

import XCTest
@testable import NetworkRequest


class MockURLSession: URLSessionProtocol {
    var dataTaskCallCount = 0
    var dataTaskArgsRequest: [URLRequest] = []
    
    func dataTask(with request: URLRequest, completionHandler: @escaping @Sendable (Data?, URLResponse?, (any Error)?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTaskArgsRequest.append(request)
        print("Request Sent")
        return DummyURLSessionDataTask()
    }
    
    func verifyDataTask(with request: URLRequest,
                        file: StaticString = #file, line: UInt = #line
    ) {
        guard dataTaskWasCalledOnce(file: file, line: line) else { return }
        XCTAssertEqual(dataTaskArgsRequest.first, request, "request", file: file, line: line)
    }
    
    private func dataTaskWasCalledOnce(
        file: StaticString = #file, line: UInt = #line) -> Bool {
            verifyMethodCalledOnce(
                methodName: "dataTask(with:completionHandler:)",
                callCount: dataTaskCallCount,
                describeArguments: "request: \(dataTaskArgsRequest)",
                file: file,
                line: line)
        }
    
}

private class DummyURLSessionDataTask: URLSessionDataTask {
    override func resume() {}
}

func verifyMethodCalledOnce(
    methodName: String,
    callCount: Int,
    describeArguments: @autoclosure () -> String,
    file: StaticString = #file,
    line: UInt = #line) -> Bool {
        if callCount == 0 {
            XCTFail("Wanted but not invoked: \(methodName)",
                    file: file, line: line)
            return false
        }
        if callCount > 1 {
            XCTFail("Wanted 1 time but was called \(callCount) times. " +
                    "\(methodName) with \(describeArguments())",
                    file: file, line: line)
            return false
        }
        return true
    }
