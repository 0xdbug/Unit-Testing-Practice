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
    
}
