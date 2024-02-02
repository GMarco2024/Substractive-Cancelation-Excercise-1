//
//  Substractive_Cancelation_Excercise_1Tests.swift
//  Substractive Cancelation Excercise 1Tests
//
//  Created by PHYS 440 Marco on 1/25/24.
//

import XCTest
@testable import Substractive_Cancelation_Excercise_1


class Substractive_Cancelation_Excercise_1Tests: XCTestCase {

    // Test cases for findQuadraticRoots function
    func testFindQuadraticRoots() {
        // Test case 1: discriminant > 0
        XCTAssertEqual(findQuadraticRoots(a: 1, b: 0, c: -1), ["Root 1: 1.0", "Root 2: -1.0"])
        
        // Test case 2: discriminant == 0
        XCTAssertEqual(findQuadraticRoots(a: 1, b: -2, c: 1), ["Root 1: 1.0", "Root 2: 1.0"])
        
       
        
    }
    
    // Test cases for conductInvestigation function
    func testConductInvestigation() {
        // Test case 1: n = 1
        XCTAssertEqual(conductInvestigation(n: 1), ["For n = 1, c = 0.1"])
        
        // Test case 2: n = 2
        XCTAssertEqual(conductInvestigation(n: 2), ["For n = 1, c = 0.1", "For n = 2, c = 0.01"])
        
        // Test case 3: n = 3
        XCTAssertEqual(conductInvestigation(n: 3), ["For n = 1, c = 0.1", "For n = 2, c = 0.01", "For n = 3, c = 0.001"])
        
        // Test case 4: n = 4
        XCTAssertEqual(conductInvestigation(n: 4), ["For n = 1, c = 0.1", "For n = 2, c = 0.01", "For n = 3, c = 0.001", "For n = 4, c = 0.0001"])
        
    }
}

    
        
    

