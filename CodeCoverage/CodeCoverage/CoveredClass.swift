//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by dbug on 3/8/25.
//

import UIKit

class CoveredClass {
    private(set) var area: Int
    
    var width: Int {
        didSet {
            area = width * width
            let color: UIColor = redOrGreen(for: width)
            drawSquare(width, color)
        }
    }
    
    init() {
        self.area = 0
        self.width = 0
    }
    
    private func redOrGreen(for width: Int) -> UIColor {
        width % 2 == 0 ? .red : .green
    }
    
    private func drawSquare(_ width: Int, _ color: UIColor) {
        
    }
    
    func max (_ x: Int, _ y: Int) -> Int {
        if x > y {
            return x
        }else {
            return y
        }
    }
    
    func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        
        for i in from..<to {
            result += "\(i),"
        }
        result += "\(to)"
        
        return result
    }
    
}
