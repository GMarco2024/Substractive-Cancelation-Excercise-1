//
//  Problem1b.swift
//
//  Homework 2 - Problem 1b
//
//  Investigate how errors in your computed answers become large as the subtractive cancellations increases...(we use a test cases here)
//
//  Marco Gonzalez PHYS-440
//

import Foundation

func conductInvestigation(n: Int) -> [String] {
    // Initialize an empty array to hold the results of each test case.
    var results: [String] = []

    // Loop through values of 'n' starting from 1 up to and including the specified maximum value.
    
    for i in 1...n {
       
        
    // Calculate the 'c' coefficient using the formula c = 10^(-n).
    // This progressively decreases 'c', increasing the potential for subtractive cancellation errors.
        let c = pow(10, -Double(i))

    // Append a descriptive string for each iteration to the results array.
    // This string includes the current value of 'n' and the calculated value of 'c'.
    // This serves to document how 'c' changes as 'n' increases and to facilitate analysis of the impact on calculation accuracy.
        
        results.append("For n = \(i), c = \(c)")
        
    }

    return results
}



