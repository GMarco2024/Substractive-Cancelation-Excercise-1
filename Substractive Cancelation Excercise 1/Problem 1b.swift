//
//  Problem1b.swift
//
//  Homework 2 - Problem 1b
//
//  Investigate how errors in your computed answers become large as the subtractive cancellations increases...(we use test cases here)
//
//  Marco Gonzalez PHYS-440
//

import Foundation

// Function to conduct the investigation for Problem 1b and return the results
func conductInvestigation(n: Double) -> [String] {
    var results: [String] = []
    
    // Given coefficients for the quadratic equation from "Hint"
    _ = 1.0
    _ = 1.0
    
    // Calculate c based on the provided formula c = 10^(-n)
    let c = pow(10, -n)

    // Append results for each iteration
    results.append("For n = \(n), c = \(c)")

    return results
}


