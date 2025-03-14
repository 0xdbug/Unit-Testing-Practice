//
//  NetworkRequestTests.swift
//  NetworkRequestTests
//
//  Created by dbug on 3/13/25.
//

import XCTest
@testable import NetworkRequest

final class NetworkRequestTests: XCTestCase {
    

    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        let mockURLSession = MockURLSession()
        sut.session = mockURLSession
        sut.loadViewIfNeeded()
        
        tap(sut.button)
        
        mockURLSession.verifyDataTask(with: URLRequest(url: URL(string: "https://itunes.apple.com/search?" + "media=ebook&term=out%20from%20boneville")!))
        
    }
    
    func test_searchForBookNetworkCall_withSuccessResponse_shouldSaveDataInResults() {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        let spyURLSession = SpyURLSession()
        sut.session = spyURLSession
        
        sut.loadViewIfNeeded()
        tap(sut.button)
        
        let handleResultsCalled = expectation(description: "handleResults called")
        sut.handleResults = { _ in
            handleResultsCalled.fulfill()
        }
        spyURLSession.dataTaskArgsCompletionHandler.first?(
            jsonData(), response(statusCode: 200), nil
        )
        waitForExpectations(timeout: 0.01)
        
        XCTAssertEqual(sut.results, [
            SearchResult(artistName: "Artist", trackName: "Track", averageUserRating: 2.5, genres: ["Foo", "Bar"])
        ])
    }
    
    func test_searchForBookNetworkCall_withSuccessBeforeAsync_shouldNotSaveDataInResults() {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        let spyURLSession = SpyURLSession()
        sut.session = spyURLSession
        
        sut.loadViewIfNeeded()
        tap(sut.button)
        
        spyURLSession.dataTaskArgsCompletionHandler.first?(
            jsonData(), response(statusCode: 200), nil
        )
        
        XCTAssertEqual(sut.results, [])
    }
    
    
    
    private func jsonData() -> Data {
        """
        {
            "results": [
                {
                    "artistName": "Artist",
                    "trackName": "Track",
                    "averageUserRating": 2.5,
                    "genres": [
                        "Foo",
                        "Bar"
                    ]
                }
            ]
        }
        """.data(using: .utf8)!
    }
    
    private func badDataMissingGenres() -> Data {
        """
        {
            "results": [
                {
                    "artistName": "Artist",
                    "trackName": "Track",
                    "averageUserRating": 2.5
                }
            ]
        }
        """.data(using: .utf8)!
    }
    
    private func response(statusCode: Int) -> HTTPURLResponse? {
        HTTPURLResponse(url: URL(string: "http://DUMMY")!,
                        statusCode: statusCode, httpVersion: nil, headerFields: nil)
    }
    
    
}
